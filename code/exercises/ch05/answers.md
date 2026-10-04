# Answers to the exercises of Chapter 5

Exercises 5.1, 5.2, 5.3, 5.5, 5.6, 5.7 and 5.9 are programs: see `ex1.f` ...
`ex9.f`. The comments in each file explain the result. The others:

## 5.1

With 30000 days the product 30000 × 86400 = 2 592 000 000 is larger than the
largest 32-bit integer (2 147 483 647) and the result wraps around to a negative
number. The largest number of days that works is 2147483647 / 86400 = 24855.

## 5.2

Each addition of 0.1 makes a tiny rounding error, because 0.1 has no exact
binary representation. With one million additions the errors accumulate: in
`real` (about 7 significant digits) the sum is about 100958.34, almost 1 % off;
in `double precision` it is 100000.0000013. The ten additions of
`precision_demo` gave much smaller errors simply because there were far fewer
of them.

## 5.4

| Name | Strict Fortran 77 | gfortran |
|---|---|---|
| `x1` | valid | valid |
| `1x` | invalid: must start with a letter | invalid |
| `total` | valid | valid |
| `average` | invalid: 7 characters | accepted (extension) |
| `temp_c` | invalid: underscore | accepted (extension) |
| `real` | valid, because Fortran has no reserved words, but very confusing | valid |
| `my name` | valid! Blanks are ignored in fixed form, so it is the name `myname` | valid |
| `I` | valid; it is the same variable as `i` | valid |

## 5.5

`n` starts with `n`, so it is an integer: the value 3.7 is truncated to 3
(gfortran warns about the conversion). `x` is real, but `7/2` is a division of
two integers, which gives 3, so `x` is 3.0. `y` is 3.5. With `implicit none` the
program would not compile until all three variables are declared, which forces
us to think about their types.

## 5.6

`(a + b + c) / 3` is an integer division: 23 / 3 = 7, and only then the result
is converted to real (7.0). `real(a + b + c) / 3.0` gives 7.66666651.

## 5.7

`int` truncates towards zero: int(2.7) = 2, int(-2.7) = -2. `nint` rounds to
the nearest integer, and halves are rounded away from zero: nint(2.5) = 3,
nint(-2.5) = -3.

## 5.8

With 2.0 the program prints 1073741824, which is 40000000 in hexadecimal: sign
bit 0, exponent bits 10000000 (128, which means 2^1) and fraction 0, i.e.
1.0 × 2^1 = 2. With -1.0 it prints -1082130432, which is BF800000 in
hexadecimal: the same bits as 1.0 (3F800000) plus the sign bit; since that is
also the sign bit of the integer, the integer is negative.

## 5.9

`short` has only 5 characters, so 'Fortran' is truncated to 'Fortr'; `long`
has 10, so the string is padded with three blanks: 'Fortran   '.
