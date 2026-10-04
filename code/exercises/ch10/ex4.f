c Solution to exercise 10.4: read n numbers and print the largest one
c and its position in the array.
      program maxpos
      implicit none
      integer nmax
      parameter (nmax = 100)
      real x(nmax), big
      integer n, i, ibig

      read (*,*) n
      if (n .LT. 1 .OR. n .GT. nmax) then
         write (*,*) 'n must be between 1 and', nmax
         stop
      endif
      read (*,*) (x(i), i = 1, n)

      ibig = 1
      big = x(1)
      do 10 i = 2, n
         if (x(i) .GT. big) then
            big = x(i)
            ibig = i
         endif
   10 continue
      write (*,*) 'Largest value:', big, '  at position', ibig

      stop
      end
