# Answers to the exercises of Chapter 6

All the exercises of this chapter have a program as solution (`ex1.f` ...
`ex8.f`); the comments in each file explain it. Some remarks:

## 6.3

| Expression | Value | Why |
|---|---|---|
| `2**3**2` | 512 | `**` is evaluated right to left: `2**(3**2)` = 2**9 |
| `-3**2` | -9 | the unary minus has the precedence of `+`/`-`: `-(3**2)` |
| `7/2*2` | 6 | left to right: `7/2` is the integer 3, times 2 |
| `7/2.0*2` | 7.0 | `7/2.0` is the real 3.5, times 2 |
| `2+3*4**2/8` | 8 | `4**2` = 16, `3*16` = 48, `48/8` = 6, plus 2 |
| `(2+3)*4**2/8` | 10 | 5*16 = 80, 80/8 = 10 |

## 6.4

`4/3` is a division of two integers, so it is 1, and `4/3*pi*r**3` is just
`pi*r**3`: with r = 2 it gives 25.13 instead of 33.51. The second expression is
correct. This is one of the most common errors in numerical programs.

## 6.5

`dble(x)` gives 0.33333334326744080: the real 1/3 had already been rounded to
about 7 digits when it was stored, and the conversion keeps that error (the
extra digits are not "more accurate", they are the exact decimal value of the
rounded real). `1.0D0/3.0D0` gives 0.33333333333333331, correct to about 16
digits.

## 6.7

`a` contains `'Hi    '` and `b` contains `'there '` (both are padded to 6
characters), so `c = a // b` is `'Hi    there '`: 12 characters with four
blanks in the middle. `d` uses only the significant parts, `'Hi there'`, padded
to 12 characters. `len(c)` and `len(a // b)` are both 12.
