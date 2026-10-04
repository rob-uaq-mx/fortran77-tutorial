# Answers to the exercises of Chapter 11

All the exercises have a program as solution (`ex1.f` ... `ex8.f`). Some
remarks:

## 11.2

With the seed 12345 the average of 10000 numbers is close to 0.5, as it
should be. This generator is fine for an exercise, but its period is only
65536: do not use it for serious work.

## 11.5

The function works on a local copy `m` of its argument. If it divided `n`
itself, it would change the variable of the caller (call by reference), and
with a constant argument such as `ndigit(42)` the program would crash or,
on older systems, change the constant 42.

## 11.6

A function can return only one value, but here we need two (`r` and
`theta`): a subroutine with two output arguments is the natural solution.
`atan2(y, x)` gives the angle in the correct quadrant (between -pi and pi),
which `atan(y/x)` cannot do (and `atan(y/x)` fails when x = 0).

## 11.7

Three comparisons are enough. After the first two, `c` holds the largest of
the three values; the third one orders `a` and `b`.

## 11.8

The program prints

     Sum of 1 to           0  is          10

The sum is right, but `n` is 0. The function counts down to 0 in its
argument `n`; since Fortran passes the arguments by reference, `n` is the
variable `n` of the main program, and the change propagates back (a side
effect). The fix (`ex8.f`) is to work on a local copy of the argument. (And
with a constant argument, `isum(4)`, the original version would crash.)
