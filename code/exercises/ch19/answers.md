# Answers to the exercises of Chapter 19

All the exercises have a program as solution (`ex1.f` ... `ex4.f`); the
programs of the exercises are `ugly.f` and `ext.f`. Some remarks:

## 19.1

Problems of style in `ugly.f`: no `implicit none` and no declarations
(implicit types); the `dimension` statement; the arithmetic `if`; a `do`
loop that ends on an `if` statement instead of `continue`; no
indentation; no comments; the magic number 100 repeated instead of a
`parameter`; one-letter names. gfortran -Wall warns about the arithmetic
if and the loop termination (both deleted in Fortran 2018).

It also has two real bugs: with more than 100 positive values it writes
beyond the end of `x`, and with no positive values it divides by zero
(`s/n` with n = 0). `ex1.f` fixes both.

## 19.2

The version with the first index in the inner loop is faster: it reads
the elements in the order in which they are stored in memory (column by
column), so it makes good use of the cache of the processor. With
gfortran on a current PC the difference is a factor of about 3 for this
size; it grows with the size of the matrix, and is larger without
optimization. The times are approximate: `cpu_time` has a limited
resolution.

## 19.3

`gfortran -std=f95 -Wall ext.f` reports only `real*8`:

    Error: GNU Extension: Nonstandard type declaration REAL*8 at (1)

(followed by a second error, because `total_sum` then has no type). The
other extensions, `do while`/`enddo`, comments with `!` and long names
with underscores, are not reported because they are standard Fortran 90,
and therefore Fortran 95. gfortran has no option to check for strict
Fortran 77; `-std=f95` finds the extensions that are not in any standard
and the features deleted from the language.

## 19.4

See `ex4.f`. A good header says what the subprogram does, and for each
argument its type, its dimension, whether it is input, output or both,
and the conditions it must satisfy (for example LDA >= max(1,M)).
