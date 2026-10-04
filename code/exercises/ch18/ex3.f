c Solution to exercise 18.3: ISAMAX returns the position of the element
c with the largest absolute value (not the value itself). Needs BLAS.
      program bigabs
      implicit none
      integer n, k, ISAMAX
      parameter (n = 7)
      real x(n)
      data x /3.0, -8.5, 2.0, 7.0, -1.0, 8.0, 0.5/

      k = ISAMAX(n, x, 1)
      write (*,*) 'Largest absolute value at position', k, ':', x(k)

      stop
      end
