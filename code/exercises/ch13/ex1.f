c Solution to exercise 13.1: the coefficients of a quadratic polynomial
c are shared through a common block, declared in the include file
c poly.inc. The function f has only one argument, x.
      program quadr
      implicit none
      INCLUDE 'poly.inc'
      real f, x
      integer i

      read (*,*) a, b, c
      do 10 i = 0, 5
         x = real(i)
         write (*,*) x, f(x)
   10 continue

      stop
      end

      real function f(x)
      implicit none
      real x
      INCLUDE 'poly.inc'

      f = (a*x + b)*x + c

      return
      end
