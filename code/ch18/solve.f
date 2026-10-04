c From chapter18.2-lapack.tex, line 108
      program solve
      implicit none
      integer n, nrhs, lda, ldb
      parameter (n=3, nrhs=1, lda=n, ldb=n)
      double precision A(lda,n), b(ldb)
      integer ipiv(n), info, i

c The system   2x +  y -  z =   8
c              -3x -  y + 2z = -11
c              -2x +  y + 2z =  -3
c A is given column by column (that is how Fortran stores it)
      data A / 2.0d0, -3.0d0, -2.0d0,
     +         1.0d0, -1.0d0,  1.0d0,
     +        -1.0d0,  2.0d0,  2.0d0 /
      data b / 8.0d0, -11.0d0, -3.0d0 /

      call dgesv(n, nrhs, A, lda, ipiv, b, ldb, info)

      if (info .ne. 0) then
         write (*,*) 'DGESV failed, info =', info
         stop
      endif
      write (*,'(A,I1,A,F10.6)') ('x(', i, ') = ', b(i), i=1,n)

      stop
      end
