# Answers to the exercises of Chapter 9

All the exercises have a program as solution (`ex1.f` ... `ex8.f`). Some
remarks:

## 9.1

The integer results are correct up to 12! = 479001600. 13! = 6227020800 does
not fit in a 32-bit integer (the largest is 2147483647), and the result wraps
around without any message. The double precision values are correct (they
have about 16 significant digits, and 15! = 1307674368000 has 13).

## 9.4

With n = 1000 the sum is 1.6439345666815615, and pi**2/6 = 1.6449340668482231;
the difference is about 0.001. In fact, the remainder of this series after n
terms is about 1/n, so the series converges very slowly.

## 9.5

| Loop | Count | Formula max(0, (e2 - e1 + e3)/e3) |
|---|---|---|
| `do i = 1, 10, 3` | 4 (i = 1, 4, 7, 10) | (10 - 1 + 3)/3 = 4 |
| `do i = 10, 1` | 0 | (1 - 10 + 1)/1 = -8, so 0 |
| `do i = 10, 1, -3` | 4 (i = 10, 7, 4, 1) | (1 - 10 - 3)/(-3) = 4 |
| `do i = 1, 1` | 1 | (1 - 1 + 1)/1 = 1 |

gfortran even warns, when compiling, that the second loop will be executed
zero times.

## 9.6

Starting from 6: 3, 10, 5, 16, 8, 4, 2, 1, that is, 8 steps. Nobody has been
able to prove that the sequence reaches 1 for every starting value (the Collatz
conjecture), although it has been verified for enormous numbers of values.
