# Fortran 77 Tutorial

An introduction to the most common features of Fortran 77, focused on
scientific computing: from the first program to BLAS and LAPACK, programming
style and debugging.

This is an **adapted and extended edition** of the
[Fortran 77 tutorial](https://web.stanford.edu/class/me200c/tutorial_77/)
written at Stanford University by Erik Boman, Sarah T. Whitlock and Paul H.
Hargrove (1995-97), prepared by Roberto Augusto Gómez Loenzo (2026). It is
not an official version of the Stanford tutorial, and it has not been
reviewed or endorsed by its authors or by Stanford University.

Compared with the original, this edition corrects technical errors, updates
the parts that had become outdated, adds a chapter on gfortran and several
new or extended sections, adds exercises to every chapter (the original had
none), and completes all the example programs so that they can be compiled,
run and tested. See "A note on this edition" in the preface for details.

## Contents

| Path | Contents |
|---|---|
| [`tutorial.pdf`](tutorial.pdf) | The tutorial (156 pages). |
| `tutorial.tex`, `chapter*.tex` | The LaTeX sources of the tutorial. |
| [`code/`](code/) | All the programs of the tutorial, the solutions of the exercises (with `answers.md`), programs with deliberate errors for the debugging chapter, and a script that compiles and runs everything. See [`code/README.md`](code/README.md). |
| [`LICENSE`](LICENSE) | The terms of use (see below). |

A video course in Spanish based on this tutorial is also available (link
coming soon).

## Building

You need a Fortran compiler, for example gfortran (free; on Windows it is
easy to install with [MSYS2](https://www.msys2.org)). To compile and run all
the programs:

```sh
cd code
sh get_blas.sh; sh get_lapack.sh   # once, only for the examples of chapter 18
sh run_tests.sh
```

To rebuild the PDF (with a TeX distribution such as TeX Live or MiKTeX):

```sh
xelatex tutorial.tex
xelatex tutorial.tex
```

## License

This repository contains material under two different terms (see
[`LICENSE`](LICENSE)):

- The parts taken from the original tutorial are Copyright (c) 1995-7 by
  Stanford University, used under its original permission: educational and
  other non-commercial purposes, retaining all author and copyright
  information.
- The new material of this edition is Copyright (c) 2026 Roberto Augusto
  Gómez Loenzo, licensed under
  [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).
