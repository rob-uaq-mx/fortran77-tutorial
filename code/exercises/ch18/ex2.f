c Solution to exercise 18.2: the norms of two vectors with SNRM2, their
c inner product with SDOT, and the angle between them. SNRM2 and SDOT
c are functions, so they must be declared real. Needs BLAS.
      program angle
      implicit none
      integer n
      parameter (n = 3)
      real u(n), v(n), SNRM2, SDOT, c, pi
      parameter (pi = 3.14159265)
      data u /1.0, 0.0, 1.0/, v /0.0, 1.0, 1.0/

      c = SDOT(n, u, 1, v, 1) / (SNRM2(n, u, 1) * SNRM2(n, v, 1))
      write (*,'(A,F8.4)') '|u| = ', SNRM2(n, u, 1)
      write (*,'(A,F8.4)') '|v| = ', SNRM2(n, v, 1)
      write (*,'(A,F8.4)') 'u.v = ', SDOT(n, u, 1, v, 1)
      write (*,'(A,F8.2,A)') 'Angle: ', acos(c)*180.0/pi, ' degrees'

      stop
      end
