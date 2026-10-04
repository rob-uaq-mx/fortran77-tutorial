c Exercise 18.8: the program solve.f of the chapter, with the matrix
c written row by row in the data statement (the classic mistake).
c DGESV then solves the system with the TRANSPOSED matrix, without any
c warning, and gives a different (wrong) answer. Needs LAPACK and BLAS.
      program wrongo
      implicit none
      integer n, nrhs, lda, ldb
      parameter (n=3, nrhs=1, lda=n, ldb=n)
      double precision A(lda,n), b(ldb)
      integer ipiv(n), info, i

c WRONG: the rows of the system written one after the other
      data A /  2.0d0,  1.0d0, -1.0d0,
     +         -3.0d0, -1.0d0,  2.0d0,
     +         -2.0d0,  1.0d0,  2.0d0 /
      data b / 8.0d0, -11.0d0, -3.0d0 /

      call dgesv(n, nrhs, A, lda, ipiv, b, ldb, info)

      if (info .ne. 0) then
         write (*,*) 'DGESV failed, info =', info
         stop
      endif
      write (*,'(A,I1,A,F10.6)') ('x(', i, ') = ', b(i), i=1,n)

      stop
      end
