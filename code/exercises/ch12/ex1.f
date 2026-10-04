c Solution to exercise 12.1: a function for the Euclidean norm of a
c vector, applied to the columns of a matrix stored with lda > m.
      program colnrm
      implicit none
      integer lda, m, n, i, j
      parameter (lda = 5, m = 2, n = 3)
      real A(lda,n), vnorm

c A is the 2 by 3 matrix   3  0  1
c                          4  2  1
c The rest of each column of the array is filled with 99, so that a
c wrong length or a wrong lda would be noticed immediately.
      do 20 j = 1, n
         do 10 i = 1, lda
            A(i,j) = 99.0
   10    continue
   20 continue
      A(1,1) = 3.0
      A(2,1) = 4.0
      A(1,2) = 0.0
      A(2,2) = 2.0
      A(1,3) = 1.0
      A(2,3) = 1.0

      do 30 j = 1, n
         write (*,*) 'Norm of column', j, ':', vnorm(m, A(1,j))
   30 continue

      stop
      end

      real function vnorm(n, x)
      implicit none
      integer n, i
      real x(*), sum

      sum = 0.0
      do 10 i = 1, n
         sum = sum + x(i)**2
   10 continue
      vnorm = sqrt(sum)

      return
      end
