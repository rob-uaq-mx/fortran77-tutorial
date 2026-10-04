c Solution to exercise 12.3: matrix-vector product by inner products
c (one row at a time), compared with matvec of the chapter (compiled
c together with ../../ch12/saxpy.f and ../../ch12/matvec.f, see
c ex3.with).
      program mvrows
      implicit none
      integer lda, m, n, i, j
      parameter (lda=4, m=2, n=3)
      real A(lda,lda), x(3), y1(4), y2(4)

      do 20 j = 1, n
         x(j) = real(j)
         do 10 i = 1, m
            A(i,j) = real(10*i + j)
   10    continue
   20 continue
      call matvec(m, n, A, lda, x, y1)
      call matvc2(m, n, A, lda, x, y2)
      write(*,*) 'matvec: ', (y1(i), i=1,m)
      write(*,*) 'matvc2: ', (y2(i), i=1,m)

      stop
      end

c Compute y = A*x with inner products: y(i) = sum of A(i,j)*x(j).
c The elements of a row are not contiguous in memory (they are lda
c positions apart), so we cannot pass a row to a function that expects
c a vector, as matvec does with the columns.
      subroutine matvc2(m, n, A, lda, x, y)
      implicit none
      integer m, n, lda
      real x(*), y(*), A(lda,*)
      integer i, j

      do 20 i = 1, m
         y(i) = 0.0
         do 10 j = 1, n
            y(i) = y(i) + A(i,j)*x(j)
   10    continue
   20 continue

      return
      end
