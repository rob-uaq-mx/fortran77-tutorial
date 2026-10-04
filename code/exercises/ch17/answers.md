# Answers to the exercises of Chapter 17

All the exercises have a program as solution (`ex1.f` ... `ex8.f`). Some
remarks:

## 17.3

    [*****]        12345678 does not fit in 5 columns
    [  3.14]       rounded to 2 decimals, adjusted to the right
    [-0.123E-03]   E: a fraction between 0.1 and 1, then the exponent
    [007]          I3.3: at least 3 digits, with leading zeros
    [For]          A3 with a longer string: the 3 leftmost characters
    [   Fortran]   A10 with a shorter string (output): blanks on the left
    [  T]          L3: T or F, adjusted to the right
    [****]         -9.96 rounded to one decimal is -10.0: 5 characters

## 17.4

Four lines: the format describes only 8 values, so when it runs out a new
line is started and the format is used again (format reversion). The last
line has only one value, 625.

## 17.6

With 0 decimals, F10.0 prints `3.` (the decimal point is always printed).
The format must be built *before* the write statement that uses it; the
number of decimals is written into it with `I1`, so it must have one digit.

## 17.7

Only `nx` and `xmax` are given in the input; `ny` and `xmin` keep their
default values. With nx = 21 points from 0 to 2, dx = 0.1.
