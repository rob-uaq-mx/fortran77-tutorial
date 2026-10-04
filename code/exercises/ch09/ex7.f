c Solution to exercise 9.7: read numbers and add them until a negative
c number is read (the negative number is not added). The loop is an
c until-loop: the body runs at least once, and the test is at the end.
      program sumpos
      implicit none
      real x, sum
      integer n

      sum = 0.0
      n = 0
   10 continue
         read (*,*) x
         if (x .GE. 0.0) then
            sum = sum + x
            n = n + 1
         endif
      if (x .GE. 0.0) goto 10

      write (*,*) n, ' numbers, sum =', sum

      stop
      end
