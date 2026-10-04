# Answers to the exercises of Chapter 8

All the exercises have a program as solution (`ex1.f` ... `ex4.f`). Some
remarks:

## 8.3

1900 is divisible by 100 but not by 400: not a leap year. 2000 is divisible by
400: leap year. 2024 is divisible by 4 and not by 100: leap year. 2026 is not
divisible by 4: not a leap year. The parentheses in the logical expression
are necessary, because `.AND.` is evaluated before `.OR.`.

## 8.4

The order of the conditions matters: since the `elseif` branches are tested
from top to bottom, a score of 85 reaches `score .GE. 80.0` only after failing
`score .GE. 90.0`, so each branch does not need to check the upper limit.
