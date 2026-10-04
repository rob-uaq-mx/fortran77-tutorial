c Fragment from chapter9-loops-enhanced.tex, section "Arithmetic if
c statement". Deleted in Fortran 2018 (obsolescent since Fortran 90):
c recent versions of gfortran warn about it with -Wall.
c --- added: program, declarations, and a loop over the input ---
      program arifif
      implicit none
      real x, y
    5 read(*,*,end=99) x, y
      if (x - y) 10, 20, 30
  10  write(*,*) 'x is less than y'
      goto 40
  20  write(*,*) 'x equals y'
      goto 40
  30  write(*,*) 'x is greater than y'
  40  continue
      goto 5
   99 continue
      end
