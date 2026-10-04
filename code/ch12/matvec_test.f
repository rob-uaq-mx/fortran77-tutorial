c Test program for the subroutines saxpy and matvec of
c chapter12-arrays2.tex (linked with saxpy.f and matvec.f, see
c matvec_test.with). A 2 by 3 matrix is stored in a 4 by 4 array.
c --- added: the whole program ---
      program mvtest
      implicit none
      integer lda, m, n, i, j
      parameter (lda=4, m=2, n=3)
      real A(lda,lda), x(3), y(4)

      do 20 j = 1, n
         x(j) = 1.0
         do 10 i = 1, m
            A(i,j) = real(10*i + j)
   10    continue
   20 continue
      call matvec(m, n, A, lda, x, y)
      write(*,*) 'y = A*x =', (y(i), i=1,m)
      write(*,*) '(expected: 36 and 66)'
      end
