c Solution to exercise 5.2: add 0.1 one million times in real and in
c double precision.
      program million
      implicit none
      real rsum
      double precision dsum
      integer i

      rsum = 0.0
      dsum = 0.0D0
      do 10 i = 1, 1000000
         rsum = rsum + 0.1
         dsum = dsum + 0.1D0
   10 continue

      write (*,*) 'Exact result:     100000'
      write (*,*) 'Real:            ', rsum
      write (*,*) 'Double precision:', dsum

      stop
      end
