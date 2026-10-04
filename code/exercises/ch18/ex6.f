c Solution to exercise 18.6: DGESV with two singular matrices. For the
c first one (row 2 = 2 * row 1) the elimination gives an exact zero
c and INFO is positive. For the second one (row 3 = row 1 + row 2) the
c rounding errors leave a tiny pivot instead of an exact zero: INFO is
c 0 and the "solution" is meaningless. Needs LAPACK and BLAS.
      program singul
      implicit none
      integer n
      parameter (n=3)
      double precision A1(n,n), A2(n,n), b(n)

c Rows (1, 2, 3), (2, 4, 6), (1, 1, 1), given column by column
      data A1 / 1.0d0, 2.0d0, 1.0d0,
     +          2.0d0, 4.0d0, 1.0d0,
     +          3.0d0, 6.0d0, 1.0d0 /
c Rows (1, 2, 3), (4, 5, 6), (5, 7, 9), given column by column
      data A2 / 1.0d0, 4.0d0, 5.0d0,
     +          2.0d0, 5.0d0, 7.0d0,
     +          3.0d0, 6.0d0, 9.0d0 /

      write (*,*) 'First matrix:'
      call try(A1, b)
      write (*,*) 'Second matrix:'
      call try(A2, b)

      stop
      end

c Solve A*x = (1, 2, 3) with DGESV and report the result
      subroutine try(A, b)
      implicit none
      integer n
      parameter (n=3)
      double precision A(n,n), b(n)
      integer ipiv(n), info

      b(1) = 1.0d0
      b(2) = 2.0d0
      b(3) = 3.0d0
      call dgesv(n, 1, A, n, ipiv, b, n, info)
      if (info .gt. 0) then
         write (*,*) '  singular: U(', info, ',', info, ') = 0'
      else if (info .lt. 0) then
         write (*,*) '  argument', -info, ' had an illegal value'
      else
         write (*,*) '  info = 0, x =', b
         write (*,*) '  U(3,3) =', A(3,3)
      endif

      return
      end
