# Answers to the exercises of Chapter 18

All the exercises except 18.7 have a program as solution (`ex1.f` ...
`ex6.f`, `ex8.f`). They need the BLAS and LAPACK libraries in `../../lib`
(run `sh get_blas.sh` and `sh get_lapack.sh` in the `code` directory).
Some remarks:

## 18.1

With increments of 2, `SAXPY(n/2, 2.0, x, 2, y, 2)` uses x(1), x(3), x(5)
and y(1), y(3), y(5); the even elements of y keep the value 10.

## 18.2

|u| = |v| = sqrt(2), u.v = 1, so cos(theta) = 1/2 and theta = 60 degrees.

## 18.3

ISAMAX returns 2: the element -8.5 has the largest absolute value, larger
than 8.0. Note that it is a position, not a value, and that it is an
integer function (declare it `integer`).

## 18.4

Both methods give C = (20 40; 26 52). For large matrices SGEMM is much
faster, especially with an optimized BLAS.

## 18.6

For the first matrix (row 2 = 2 * row 1) the elimination produces an exact
zero, and INFO = 3: U(3,3) = 0. For the second one (row 3 = row 1 + row 2)
the rounding errors leave U(3,3) = 1.1E-15 instead of 0, so DGESV does
not notice anything: INFO = 0. Here the right-hand side happens to be
consistent (b3 = b1 + b2), and the printed x = (-1/3, 2/3, 0) does satisfy
the equations, but it is only one of infinitely many solutions; with
another right-hand side the "solution" would be huge and meaningless.
INFO > 0 only detects *exactly* singular matrices; for nearly singular
ones, LAPACK has routines that estimate the condition number (e.g. DGECON,
or the expert driver DGESVX).

## 18.7

    gfortran -c saxpy.f matvec.f scale.f mscale.f
    ar rcs libmyla.a saxpy.o matvec.o scale.o mscale.o
    ar t libmyla.a
    gfortran sclmat.f -L. -lmyla -o sclmat

With `-L. -lmyla` *before* `sclmat.f` the link fails: when the linker
reads the library, no routine from it is needed yet, so it takes none,
and then `scale` and `mscale` are missing. On Linux the message is
`undefined reference to 'mscale_'`; with some Windows installations of
gfortran only `ld returned 1 exit status` is shown.

## 18.8

With the rows written one after the other, the data statement fills the
array column by column, so A holds the *transpose* of the intended matrix.
DGESV solves the transposed system without any warning, and prints
x = (39, 34, -16) instead of (2, 3, -1).
