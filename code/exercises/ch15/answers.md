# Answers to the exercises of Chapter 15

All the exercises except 15.4 have a program as solution (`ex1.f`,
`ex2.f`, `ex3.f`, `ex5.f` ... `ex8.f`). The data files are `poem.dat` and
`values.dat`. Some remarks:

## 15.3

The records can be written and read in any order: that is what direct
access means. The program prints 100, 1 and 25. The unit of `RECL` is not
fixed by the Fortran 77 standard: gfortran uses bytes, some other compilers
use 4-byte words.

## 15.4

The first run creates `newfile.txt` (status NEW), reads it back and, with
`status='keep'`, leaves it on the disk. In the second run the `open` with
`status='new'` fails, because the file already exists:

    Cannot open file 'newfile.txt': File exists

With `status='unknown'` the program would work every time: the existing
file would simply be opened (and overwritten).

## 15.5

With gfortran the formatted file has 19000 bytes (each number is written
as text, with blanks, in a line of 19 characters including the end of
line), and the unformatted file 4008 bytes: 4 bytes for each real number,
exactly as in memory, plus a 4-byte record marker at each end of the
record. Unformatted files are smaller and faster, and they keep all the
digits; but they cannot be read by people, and in general not by programs
compiled with a different compiler or on a different computer.

## 15.7

With `values.dat` the program reports bad data on lines 3 (`abc`) and 5
(`x7`), and sums the other four values: 10.0. Note that `1,2` would *not*
be an error in list-directed input: the comma separates two values, and
the read takes only the first one.

## 15.8

The first run prints 1, the second 2, and so on. Delete `runs.dat` to start
again.
