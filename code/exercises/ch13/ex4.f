c Solution to exercise 13.4: the program common_array.f of the chapter,
c with the declarations of the common block in the include file
c matrix.inc.
      program main
      implicit none
      INCLUDE 'matrix.inc'

      n = 3
      A(n,n) = 9.0
      call sub1
      end

      subroutine sub1
      implicit none
      INCLUDE 'matrix.inc'

      write(*,*) 'In sub1: n =', n, '  A(n,n) =', A(n,n)
      end
