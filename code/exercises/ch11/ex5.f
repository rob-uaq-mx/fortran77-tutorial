c Solution to exercise 11.5: an integer function ndigit(n) that returns
c the number of decimal digits of an integer n >= 0.
      program digits
      implicit none
      integer ndigit

      write (*,*) 0, ndigit(0)
      write (*,*) 7, ndigit(7)
      write (*,*) 42, ndigit(42)
      write (*,*) 1000, ndigit(1000)
      write (*,*) 2147483647, ndigit(2147483647)

      stop
      end

      integer function ndigit(n)
      implicit none
      integer n
c Local copy: n must not be changed (it may be a constant)
      integer m

      m = n
      ndigit = 1
   10 if (m .GE. 10) then
         m = m / 10
         ndigit = ndigit + 1
         goto 10
      endif

      return
      end
