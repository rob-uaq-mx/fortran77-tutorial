c Solution to exercise 16.2: read n and then n integers, in any layout,
c with an implied do-loop; print the sum and the numbers in reverse
c order.
      program revers
      implicit none
      integer nmax
      parameter (nmax = 100)
      integer k(nmax), n, i, isum

      read (*,*) n
      if (n .LT. 1 .OR. n .GT. nmax) then
         write (*,*) 'n must be between 1 and', nmax
         stop
      endif
      read (*,*) (k(i), i = 1, n)

      isum = 0
      do 10 i = 1, n
         isum = isum + k(i)
   10 continue
      write (*,*) 'Sum:', isum
      write (*,*) 'Reversed:', (k(i), i = n, 1, -1)

      stop
      end
