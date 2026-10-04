# Answers to the exercises of Chapter 13

All the exercises have a program as solution (`ex1.f` ... `ex4.f`; the
include files are `poly.inc` and `matrix.inc`). Some remarks:

## 13.1

With the coefficients 1, -3, 2 the polynomial is (x - 1)(x - 2), so f is 0
at x = 1 and x = 2. Here the common block lets `f` keep the usual form of a
mathematical function, f(x), even though it depends on three more
parameters. (Passing a, b and c as arguments would also work, and it would
be clearer.)

## 13.2

The program prints `x = 1.0  y = 12.0`. The subroutine lists the variables
of the common block in the opposite order, so its `x` is the second
variable of the block, which the main program calls `y`. The compiler
cannot detect this: each program unit names the parts of the block as it
likes.

## 13.3

The main program must set `ncalls = 0` with an assignment. A `data`
statement for a variable in a named common block is only allowed in a
`block data` unit (Chapter 14).

## 13.4

The output is the same as that of `common_array.f`. Now `nmax` is defined
in only one place, so it cannot be different in different program units.
