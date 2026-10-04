#!/bin/sh
# Compiles and runs the programs of the tutorial.
#
# Usage (from the code directory):
#   sh run_tests.sh                    # everything
#   sh run_tests.sh ch05 ch15          # only these directories
#   FFLAGS="-std=f2008" sh run_tests.sh   # e.g. to see obsolescent features
#
# Conventions:
# - Only files containing a main program are compiled and run; files that
#   contain only subprograms are linked in through a .with file.
# - <name>.with  lists extra source files (relative to the directory of
#                <name>.f) that are compiled and linked with <name>.f.
# - <name>.in    is used as standard input, if it exists.
# - Each program runs in a fresh temporary directory, with a copy of the
#   .dat files of its directory.
# - The programs in checks/ are EXPECTED to fail or give wrong results:
#   they demonstrate errors explained in the text. They are not counted.
# - The complete output goes to results.txt.

cd "$(dirname "$0")" || exit 1
FC=${FC:-gfortran}
# -msse2 -mfpmath=sse: with a 32-bit gfortran, avoid the x87 FPU (80-bit
# intermediate results) to get the same results as a 64-bit gfortran.
# -Wno-integer-division: WORKAROUND for a compiler bug, see "Known compiler
# problems" in README.md. Remove it once the bug is fixed.
FFLAGS=${FFLAGS:--Wall -Wno-integer-division -fcheck=all -msse2 -mfpmath=sse}
LOG=results.txt
BUILD=build

if [ $# -gt 0 ]; then
    dirs="$*"
else
    dirs="$(ls -d ch[0-9]* exercises/ch[0-9]* 2>/dev/null) checks"
fi

mkdir -p "$BUILD"
: > "$LOG"
echo "Compiler: $($FC --version | head -1)   FFLAGS: $FFLAGS" | tee -a "$LOG"

ok=0; failed=0; warned=0; skipped=0

for d in $dirs; do
    d=${d%/}
    [ -d "$d" ] || { echo "No such directory: $d"; continue; }
    echo "" | tee -a "$LOG"
    echo "=== $d" | tee -a "$LOG"
    for src in "$d"/*.f; do
        [ -f "$src" ] || continue
        grep -qi '^      program ' "$src" || continue
        name=$(basename "$src" .f)
        tag=$(echo "$d" | tr '/' '_')
        exe="$PWD/$BUILD/${tag}_$name.exe"
        echo "" >> "$LOG"
        echo "################ $src" >> "$LOG"

        extra=""
        if [ -f "$d/$name.with" ]; then
            for e in $(cat "$d/$name.with"); do extra="$extra $d/$e"; done
        fi
        libs=""
        case $d in
            *ch18)
                if [ ! -f lib/libblas.a ] || [ ! -f lib/liblapack.a ]; then
                    printf '  %-28s %s\n' "$name" \
                      "SKIPPED (run: sh get_blas.sh; sh get_lapack.sh)" | tee -a "$LOG"
                    skipped=$((skipped+1))
                    continue
                fi
                libs="-Llib -llapack -lblas" ;;
        esac

        if ! $FC $FFLAGS -I"$d" "$src" $extra -o "$exe" $libs >> "$LOG" 2>&1; then
            status="DOES NOT COMPILE"
        else
            nwarn=$($FC $FFLAGS -I"$d" -fsyntax-only "$src" $extra 2>&1 | grep -c "Warning")
            run=$(mktemp -d)
            cp "$d"/*.dat "$run"/ 2>/dev/null
            inp=/dev/null
            [ -f "$d/$name.in" ] && inp="$PWD/$d/$name.in"
            echo "---- output:" >> "$LOG"
            (cd "$run" && timeout 10 "$exe" < "$inp") >> "$LOG" 2>&1
            rc=$?
            rm -rf "$run"
            if [ "$rc" -eq 0 ]; then
                status="OK"
                [ "$nwarn" -gt 0 ] && status="OK ($nwarn warnings)"
            elif [ "$rc" -eq 124 ]; then
                status="TIMEOUT"
            else
                status="RUNTIME ERROR (exit code $rc)"
            fi
        fi

        printf '  %-28s %s\n' "$name" "$status" | tee -a "$LOG"
        if [ "$d" != "checks" ]; then
            case $status in
                "OK ("*) ok=$((ok+1)); warned=$((warned+1)) ;;
                OK*)     ok=$((ok+1)) ;;
                *)       failed=$((failed+1)) ;;
            esac
        fi
    done
done

echo "" | tee -a "$LOG"
echo "Programs: $ok OK ($warned with warnings), $failed failed, $skipped skipped." | tee -a "$LOG"
echo "(The programs in checks/ are expected to fail; they are not counted.)" | tee -a "$LOG"
echo "Full output in $LOG"
[ "$failed" -eq 0 ]
