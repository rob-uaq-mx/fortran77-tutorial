# Answers to the exercises of Chapter 20

The programs of the exercises are in `../../checks` (`col72.f`, `fpe.f`,
`uninit.f`, `buggy.f`); the corrected versions are `ex1.f` ... `ex4.f`.
The results below were obtained with gfortran 16 (MSYS2, Windows).

## 20.1

The program prints `total = 5.0`. The 2 of 25 is in column 72 and the 5
in column 73, which is ignored: the statement is `total = a + b + 2`.
Without options there is no message at all; with `-Wall` gfortran warns
`Line truncated`.

## 20.2

Without options the program prints `y = NaN  z = NaN`: the invalid
operation produces a NaN, which spreads to every result computed from it.
With `-g -ffpe-trap=invalid` the program stops at the square root with
`Program received signal SIGFPE: Floating-point exception - erroneous
arithmetic operation`, followed by a backtrace that shows the line.

## 20.3

Compiled without options the program printed the correct sum, 55, because
the memory used for `s` happened to contain zero. That is exactly the
danger: the bug is invisible until the program is compiled with other
options, with another compiler, or on another computer, and then the
results are wrong. gfortran -Wall did not warn about it here. With
`-g -finit-real=snan -ffpe-trap=invalid`, `s` starts as a signaling NaN
and the program stops at its first use.

## 20.4

The three errors:

1. there is no `implicit none`, so the misspelled variable `varnce` is
   silently created as a new real variable;
2. `1/(n-1)` is an integer division, which gives 0;
3. the program prints `var`, the sum of squares (8.0), not the variance.

`-Wall` reported nothing. `-fimplicit-none` (or `implicit none`) finds the
first error: `Symbol 'varnce' has no IMPLICIT type; did you mean 'var'?`.
The other two can only be found by reading the code, or by testing the
program with data whose result you know, as here.
