# Programs of the Fortran 77 tutorial

All the code of the tutorial (`../tutorial.tex`), ready to compile and run.

| Path | Contents |
|---|---|
| `chNN/` | The programs of chapter NN, with their input (`.in`), data (`.dat`) and include (`.inc`) files. |
| `exercises/chNN/` | Solutions to the exercises at the end of chapter NN. |
| `checks/` | Programs that are *expected* to fail or give wrong results: they demonstrate errors explained in the text (passing a constant to a subroutine that changes it, calling an undeclared function, reading past the end of the input, an index out of bounds), and the programs of the debugging exercises of chapter 20. |
| `run_tests.sh` | Compiles and runs everything; the full output goes to `results.txt`. |
| `get_blas.sh` | Downloads the reference BLAS from Netlib and builds `lib/libblas.a`. |
| `get_lapack.sh` | Downloads `DGESV` and its dependencies from Netlib and builds `lib/liblapack.a`. |

The examples in `ch18/` need both libraries: run `sh get_blas.sh` and `sh get_lapack.sh` once.

## Conventions

- Complete programs from the text are copied exactly; the first comment line says
  which `.tex` file and line they come from.
- When the text only shows a fragment, the file says so, and the code that was added
  to make it a complete program is announced with a comment `c --- added: ... ---`.
- Only files that contain a main program are run. Files with only subprograms
  (for example `ch12/saxpy.f`) are linked to the programs that need them through
  a `<program>.with` file, which lists the extra source files.
- Programs that read from standard input get `<program>.in`.
- Each program runs in a fresh temporary directory with a copy of the `.dat` files
  of its directory, so programs that create files can be run again and again.

## Usage

```sh
sh get_blas.sh; sh get_lapack.sh       # once, for ch18/
sh run_tests.sh                        # everything
sh run_tests.sh ch09 exercises/ch09    # some directories
FFLAGS="-std=f2008" sh run_tests.sh    # see which obsolescent features are used
```

By default the programs are compiled with
`-Wall -Wno-integer-division -fcheck=all -msse2 -mfpmath=sse`.
`-Wno-integer-division` is a temporary workaround (see below). The last two options
make a 32-bit gfortran give the same floating point results as a 64-bit gfortran;
on a 64-bit system they are harmless.

When you change a program in the text, update the corresponding file here and run
`run_tests.sh` again.

## Known compiler problems

### gfortran 16.2 (MSYS2) crashes on truncated constant integer divisions

*Found 2026-10-04 with `mingw-w64-ucrt-x86_64-gcc-fortran 16.2.0-4` (UCRT64,
Windows 11). Reported as
[msys2/MINGW-packages#32122](https://github.com/msys2/MINGW-packages/issues/32122);
check there first whether it has been fixed.*

When the check `-Winteger-division` (part of `-Wall`) is active, the compiler itself
crashes, at random, in roughly 7 out of 10 attempts, when a constant integer division
truncates. A minimal example (`t.f`):

```fortran
      program t
      integer i
      i = 5/2
      print *, i
      end
```

```
$ gfortran -Winteger-division -c t.f
f951.exe: internal compiler error: Segmentation fault
```

Observations:

- Only divisions that truncate (`5/2`) trigger it; exact ones (`4/2`) never do.
- Other warnings (unused variables, truncated strings, ...) work fine.
- It also happens with `-w` (all warnings suppressed) and with `-Werror`, so the crash
  is in the code that checks the division, not in the printing of the message.
- It does not depend on the locale (`LANG`/`LC_ALL`) or on the directory.
- With `-Wno-integer-division` the check is not done and the crash never occurs.

This affects `ch06/precedence.f` (`3/2`) and `ch07/logical.f` (`5/2`), which are
meant to illustrate integer division, so the workaround hides their warning.

**How to check whether it has been fixed** (e.g. after `pacman -Syu` in MSYS2):
run the command above on `t.f` about ten times. If it never crashes, remove
`-Wno-integer-division` from `FFLAGS` in `run_tests.sh` and from this README.
Upstream: <https://github.com/msys2/MINGW-packages/issues> and
<https://gcc.gnu.org/bugzilla/>.

## License

This directory accompanies an adapted and extended edition of the Fortran 77
tutorial written at Stanford University by Erik Boman, Sarah T. Whitlock and
Paul H. Hargrove (https://web.stanford.edu/class/me200c/tutorial_77/). See
"A note on this edition" in the preface of the tutorial.

- Code taken from the original tutorial (the programs and fragments whose
  first comment line says they come from the text, as far as they reproduce
  the original) is Copyright (c) 1995-7 by Stanford University. The original
  grants permission to use it for educational and other non-commercial
  purposes, provided all author and copyright information is retained.
- Everything else (the code added to complete the fragments, the solutions of
  the exercises, the test scripts and this documentation) is Copyright (c)
  2026 Roberto Augusto Gómez Loenzo, licensed under the Creative Commons
  Attribution-NonCommercial-ShareAlike 4.0 International License
  (CC BY-NC-SA 4.0): https://creativecommons.org/licenses/by-nc-sa/4.0/

This edition is not an official version of the Stanford tutorial, and it has
not been reviewed or endorsed by its authors or by Stanford University.
