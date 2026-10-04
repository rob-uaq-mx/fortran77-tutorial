# Answers to the exercises of Chapter 14

All the exercises have a program as solution (`ex1.f` ... `ex4.f`). Some
remarks:

## 14.2

The values are assigned in column-first order: B(1,1) = B(2,1) = 1.0,
B(1,2) = B(2,2) = B(1,3) = 2.0 and B(2,3) = 3.0, that is,

     1.0   2.0   2.0
     1.0   2.0   3.0

## 14.3

`count1` prints 1, 2, 3: its `data` statement sets n to 0 only once, when
the program starts, and `save` keeps the value between calls. `count2`
prints 1, 1, 1: its assignment `n = 0` is executed at every call.

## 14.4

Without the `external cinit` statement, the program works the same way as
long as the block data unit is in the same file. If it were compiled into
a library, the linker might not include it, and the constants would
silently have no values.
