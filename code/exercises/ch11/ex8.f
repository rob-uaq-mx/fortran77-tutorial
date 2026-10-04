c Solution to exercise 11.8: the function isum of the exercise, fixed.
c The original version counted n down to 0 in the argument itself, so
c it changed the variable n of the main program (a side effect), and
c the program printed "Sum of 1 to 0 is 10". The fixed version works
c on a local copy.
      program sumto
      implicit none
      integer isum, n, s

      n = 4
      s = isum(n)
      write (*,*) 'Sum of 1 to', n, ' is', s

      stop
      end

      integer function isum(n)
      implicit none
      integer n
      integer k

      k = n
      isum = 0
   10 if (k .GT. 0) then
         isum = isum + k
         k = k - 1
         goto 10
      endif

      return
      end
