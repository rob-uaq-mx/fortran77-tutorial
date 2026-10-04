# Answers to the exercises of Chapter 4

1. Check the installation and compile the first programs:

   ```
   gfortran --version
   gfortran hello.f -o hello
   ./hello
   gfortran circle.f -o circle
   ./circle
   ```

   (`hello.f` and `circle.f` are in `code/ch03`.) On Windows, the executables
   are `hello.exe` and `circle.exe`; in Git Bash or the MSYS2 terminal they run
   with `./hello`, in PowerShell or the Command Prompt with `.\hello` or `hello`.

2. Compiling in two steps:

   ```
   gfortran -c circle.f          # produces the object file circle.o
   gfortran circle.o -o circle   # links it into the executable
   ```

   After the first command there is no executable yet: only `circle.o`, which
   contains the machine code of the program but has not been linked with the
   Fortran run-time library.

3. With the files `main.f` and `funcs.f` of this directory:

   ```
   gfortran main.f funcs.f -o twofiles
   ```

   or, in separate steps,

   ```
   gfortran -c main.f
   gfortran -c funcs.f
   gfortran main.o funcs.o -o twofiles
   ```

   The `Makefile` in this directory is the solution to the second part. After
   `make`, if only `funcs.f` is modified, `make` recompiles `funcs.f` and links
   again, but does not recompile `main.f`. Remember that the command lines of a
   Makefile must start with a TAB character, not with spaces.

4. `typo.f` compiles without any message and prints `Area = 0.00000000` (or some
   other meaningless value): the result of the formula was stored in a new
   variable `aera`, created automatically by the implicit typing rules, and
   `area` was never given a value. Even with `-Wall`, gfortran 16 does not warn
   about it. With `-fimplicit-none` the compiler refuses the program:

   ```
   Error: Symbol 'aera' at (1) has no IMPLICIT type; did you mean 'area'?
   ```

   This is why the tutorial recommends `implicit none` (Chapter 5) or the option
   `-fimplicit-none`.
