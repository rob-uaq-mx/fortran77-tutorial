c Solution to exercise 18.1: y := 2*x + y with the BLAS routine SAXPY,
c first for the whole vectors and then only for the elements with odd
c index (increment 2). Needs BLAS.
      program baxpy
      implicit none
      integer n, i
      parameter (n = 6)
      real x(n), y(n)

      call setxy(n, x, y)
      call SAXPY(n, 2.0, x, 1, y, 1)
      write (*,'(A,6F7.1)') 'All elements:', (y(i), i = 1, n)

      call setxy(n, x, y)
      call SAXPY(n/2, 2.0, x, 2, y, 2)
      write (*,'(A,6F7.1)') 'Odd indices: ', (y(i), i = 1, n)

      stop
      end

c x = 1, 2, ..., n and y = 10, 10, ..., 10
      subroutine setxy(n, x, y)
      implicit none
      integer n, i
      real x(n), y(n)

      do 10 i = 1, n
         x(i) = real(i)
         y(i) = 10.0
   10 continue

      return
      end
