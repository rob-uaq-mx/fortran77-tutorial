# Answers to the exercises of Chapter 10

Exercises 10.1, 10.2 and 10.4 have a program as solution (`ex1.f`, `ex2.f`,
`ex4.f`). Some remarks:

## 10.1

The mean alone can be computed while the numbers are read, keeping only a
running sum. But to print the numbers that are larger than the mean, we
must look at every number again *after* the mean is known: they must be
kept somewhere, and that is what the array is for.

## 10.3

The elements are stored by column, with leading dimension 5, so `A(i,j)` is
in position (j-1)*5 + i of the array (counting from 1):

    column 1: A(1,1) .. A(3,1) in positions  1 ..  3; 4, 5 unused
    column 2: A(1,2) .. A(3,2) in positions  6 ..  8; 9, 10 unused
    column 3: A(1,3) .. A(3,3) in positions 11 .. 13; 14, 15 unused

So `A(2,3)` is in position (3-1)*5 + 2 = 12, and positions 4, 5, 9, 10, 14
and 15 are not used. The matrix is not stored contiguously, although the
array is.

## 10.5

The loop of `checks/bounds.f` goes up to 11, but `x` has only 10 elements,
so `x(11) = 11.0` writes outside the array. Without `-fcheck=bounds` the
program usually runs to the end without any message (it overwrites whatever
is next in memory: here nothing important, in a larger program possibly
another variable). With `-fcheck=bounds` (or `-fcheck=all`) it stops with

    Fortran runtime error: Index '11' of dimension 1 of array 'x' above
    upper bound of 10

and names the line. gfortran with `-Wall` also warns at compile time,
because here the bounds of the loop are constants. The fix is to make the
loop go from 1 to 10 (better: declare the size with a `parameter` and use
it both in the declaration and in the loop).
