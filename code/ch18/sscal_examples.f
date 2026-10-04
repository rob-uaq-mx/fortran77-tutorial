c Fragments from chapter18.1-blas.tex, section "Examples": SSCAL with
c different starting elements and increments. Needs BLAS
c (sh get_blas.sh).
c --- added: program, initial data, reset and output ---
      program sscex
      implicit none
      real x(100), a
      a = 2.0

      call reset(x)
      call SSCAL(100, a, x, 1)
      write(*,*) 'SSCAL(100, a, x, 1):    x(1), x(100) =', x(1), x(100)

      call reset(x)
      call SSCAL( 50, a, x(51), 1)
      write(*,*) 'SSCAL(50, a, x(51), 1): x(50), x(51), x(100) =',
     +           x(50), x(51), x(100)

      call reset(x)
      call SSCAL( 50, a, x(2), 2)
      write(*,*) 'SSCAL(50, a, x(2), 2):  x(1), x(2), x(3), x(100) =',
     +           x(1), x(2), x(3), x(100)
      end

      subroutine reset(x)
      implicit none
      real x(100)
      integer i
      do 10 i = 1, 100
         x(i) = 1.0
   10 continue
      end
