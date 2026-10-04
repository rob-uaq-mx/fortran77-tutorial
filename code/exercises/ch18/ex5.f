c Solution to exercise 18.5: the system of the chapter with two
c right-hand sides at once (NRHS = 2). Needs LAPACK and BLAS.
      program solve2
      implicit none
      integer n, nrhs, lda, ldb
      parameter (n=3, nrhs=2, lda=n, ldb=n)
      double precision A(lda,n), B(ldb,nrhs)
      integer ipiv(n), info, i, j

      data A / 2.0d0, -3.0d0, -2.0d0,
     +         1.0d0, -1.0d0,  1.0d0,
     +        -1.0d0,  2.0d0,  2.0d0 /
c Column 1: the right-hand side of the chapter; column 2: A*(1,1,1)
      data B / 8.0d0, -11.0d0, -3.0d0,
     +         2.0d0,  -2.0d0,  1.0d0 /

      call dgesv(n, nrhs, A, lda, ipiv, B, ldb, info)

      if (info .ne. 0) then
         write (*,*) 'DGESV failed, info =', info
         stop
      endif
      do 10 j = 1, nrhs
         write (*,'(A,I1,A,3F10.6)') 'Solution ', j, ':',
     +         (B(i,j), i = 1, n)
   10 continue

      stop
      end
