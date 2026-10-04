c From chapter12-arrays2.tex, line 150
      program sclmat
      implicit none
      integer lda, m, n, i, j
      parameter (lda=3, m=2, n=2)
      real alpha, A(lda,n)

      alpha = 10.0

      call fill(A, lda, n)
      call mscale(m, n, alpha, A, lda)
      write(*,*) 'With mscale:'
      do 10 i = 1, lda
         write(*,*) (A(i,j), j=1,n)
   10 continue

      call fill(A, lda, n)
      call scale(m*n, alpha, A)
      write(*,*) 'With scale(m*n, alpha, A):'
      do 20 i = 1, lda
         write(*,*) (A(i,j), j=1,n)
   20 continue

      stop
      end

      subroutine fill(A, lda, n)
      implicit none
      integer lda, n, i, j
      real A(lda,n)

c Set all the elements of the array (not only the matrix) to 1
      do 20 j = 1, n
         do 10 i = 1, lda
            A(i,j) = 1.0
   10    continue
   20 continue

      return
      end
