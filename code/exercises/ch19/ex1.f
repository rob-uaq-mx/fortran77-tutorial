c Solution to exercise 19.1: the program ugly.f rewritten in a good
c style. It reads numbers until the end of the input, ignores those
c that are not positive, and prints the average of the positive
c numbers and those that are larger than the average.
      program nice
      implicit none
      integer nmax
      parameter (nmax = 100)
      real x(nmax), v, sum, avg
      integer n, i

c Read the positive values (at most nmax of them)
      n = 0
      sum = 0.0
   10 read (*,*,end=20) v
      if (v .GT. 0.0) then
         if (n .GE. nmax) then
            write (*,*) 'Too many values: at most', nmax
            stop
         endif
         n = n + 1
         x(n) = v
         sum = sum + v
      endif
      goto 10

   20 if (n .EQ. 0) then
         write (*,*) 'No positive values'
         stop
      endif
      avg = sum / real(n)

      write (*,*) 'Average:', avg
      write (*,*) 'Values above the average:'
      do 30 i = 1, n
         if (x(i) .GT. avg) write (*,*) '  ', x(i)
   30 continue

      stop
      end
