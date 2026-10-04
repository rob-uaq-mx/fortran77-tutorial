# Answers to the exercises of Chapter 2

1. Fortran comes from **FOR**mula **TRAN**slation: the programmer writes
   mathematical formulas almost as on paper, and the compiler translates them
   into machine language. Its development started at IBM in the 1950's under
   the direction of John Backus, and the first compiler was delivered in 1957.

2. FORTRAN 66 (the first standard), FORTRAN 77, Fortran 90 and its minor
   revision Fortran 95, Fortran 2003, Fortran 2008, Fortran 2018 and
   Fortran 2023. New features of Fortran 90 (any three): free-form source code,
   operations on whole arrays, dynamic memory allocation, modules, derived
   types (records).

3. Software inertia is the tendency to keep using existing software instead of
   rewriting it: after many years of work on a program, a company or a research
   group is unlikely to translate it to another language, because a reliable
   translation is very difficult and expensive, and the existing program works.
   Since a vast amount of scientific software was written in Fortran 77, and
   modern compilers still compile it (the standards are almost completely
   backwards compatible), that code stays in use, and someone has to read and
   maintain it.

4. Section 1.1 ("Purpose") says: "This standard specifies the form and
   establishes the interpretation of programs expressed in the FORTRAN language.
   The purpose of this standard is to promote portability of FORTRAN programs
   for use on a variety of data processing systems." That is exactly the idea
   of portability: a program that follows the standard can be compiled and run,
   with the same meaning, on any computer that has a Fortran 77 compiler.
