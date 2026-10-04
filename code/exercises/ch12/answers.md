# Answers to the exercises of Chapter 12

Exercises 12.1, 12.2 and 12.3 have a program as solution (`ex1.f`, `ex2.f`,
`ex3.f`). Some remarks:

## 12.3

Both subroutines give the same result. `matvec` works by columns, which
are contiguous in memory, so it can pass `A(1,j)` to `saxpy` as if it were
a vector. The elements of a row, `A(i,1)`, `A(i,2)`, ..., are `lda`
positions apart in memory, so a row cannot be passed to a subprogram that
expects a vector. `matvc2` uses two nested loops instead. (BLAS solves
this problem with an "increment" argument: see the chapter on BLAS.)

## 12.4

With `lda = 4`, `scale(m*n, alpha, A)` scales the first m*n = 4 elements
in memory. Since the array is stored by columns, these are the four
elements of the first column: A(1,1), A(2,1), A(3,1) and A(4,1). Two of
them (rows 3 and 4) are outside the matrix, and the second column of the
matrix, A(1,2) and A(2,2), is not scaled at all. The output (with `lda=4`
in the parameter statement of `sclmat.f`) is

     With scale(m*n, alpha, A):
       10.0000000       1.00000000
       10.0000000       1.00000000
       10.0000000       1.00000000
       10.0000000       1.00000000

`mscale` is not affected: it always scales the first m elements of each
column.
