c Solution to exercise 12.2: a subroutine that transposes an m by n
c matrix A (leading dimension lda) into B (leading dimension ldb).
      program trtest
      implicit none
      integer lda, ldb, m, n, i, j
      parameter (lda = 4, ldb = 5, m = 2, n = 3)
      real A(lda,n), B(ldb,m)

      do 20 j = 1, n
         do 10 i = 1, m
            A(i,j) = real(10*i + j)
   10    continue
   20 continue

      call transp(m, n, A, lda, B, ldb)

      write (*,*) 'A (2 by 3):'
      do 30 i = 1, m
         write (*,'(3F6.1)') (A(i,j), j = 1, n)
   30 continue
      write (*,*) 'B = transpose of A (3 by 2):'
      do 40 i = 1, n
         write (*,'(2F6.1)') (B(i,j), j = 1, m)
   40 continue

      stop
      end

      subroutine transp(m, n, A, lda, B, ldb)
      implicit none
      integer m, n, lda, ldb
      real A(lda,*), B(ldb,*)
      integer i, j

      do 20 j = 1, n
         do 10 i = 1, m
            B(j,i) = A(i,j)
   10    continue
   20 continue

      return
      end
