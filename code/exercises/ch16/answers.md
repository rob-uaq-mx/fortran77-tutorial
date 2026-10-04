# Answers to the exercises of Chapter 16

Exercises 16.1, 16.2 and 16.3 have a program as solution (`ex1.f`,
`ex2.f`, `ex3.f`). Some remarks:

## 16.1

The program prints `1 2 4 5 6`. Each `read` starts at the beginning of a
new line (record): the first one takes 1 and 2 and discards the 3; the
second one needs two values, so it takes the 4 and continues on the next
line with the 5; the third one takes the 6, and the 7 is discarded.

## 16.2

The implied do-loop `(k(i), i = 1, n)` reads n values, no matter how they
are distributed over the lines. With a negative increment,
`(k(i), i = n, 1, -1)` writes them in reverse order.

## 16.4

In `eof_extra.in` the first four values are on the first line. The first
`read` takes -1 and 100 and discards the rest of the line; the second one
reads x and y from the *second* line (1.0 and 2.0) and discards the rest;
the third one finds no more lines for z, and the program stops with

    Fortran runtime error: End of file

The fix is to put each group of values on its own line (or to read all of
them with a single `read`). Note that `x` and `y` would have received wrong
values even without the error.
