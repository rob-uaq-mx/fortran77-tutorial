c Fragment from chapter9-loops-enhanced.tex, section "Non-block do"
c (two loops sharing a terminal statement). Deleted in Fortran 2018
c (obsolescent since Fortran 90): recent versions of gfortran warn about
c it with -Wall.
c --- added: program, declarations and output ---
      program shrdo
      implicit none
      real a(10,10), b(10,10)
      integer i, j
      do 50 i = 1, 10
      do 50 j = 1, 10
         a(i,j) = 0.0
  50  b(i,j) = 1.0
      write(*,*) 'a(10,10) =', a(10,10), '  b(10,10) =', b(10,10)
      end
