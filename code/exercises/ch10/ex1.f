c Solution to exercise 10.1: read n numbers, print their mean and the
c numbers that are larger than the mean.
      program mean
      implicit none
      integer nmax
      parameter (nmax = 100)
      real x(nmax), sum, avg
      integer n, i, count

      read (*,*) n
      if (n .LT. 1 .OR. n .GT. nmax) then
         write (*,*) 'n must be between 1 and', nmax
         stop
      endif
      read (*,*) (x(i), i = 1, n)

      sum = 0.0
      do 10 i = 1, n
         sum = sum + x(i)
   10 continue
      avg = sum / real(n)
      write (*,*) 'Mean:', avg

      count = 0
      write (*,*) 'Values above the mean:'
      do 20 i = 1, n
         if (x(i) .GT. avg) then
            write (*,*) '  ', x(i)
            count = count + 1
         endif
   20 continue
      write (*,*) count, ' of', n, ' values are above the mean'

      stop
      end
