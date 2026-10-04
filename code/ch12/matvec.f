c From chapter12-arrays2.tex, line 58
      subroutine matvec (m, n, A, lda, x, y)
      implicit none
      integer m, n, lda
      real x(*), y(*), A(lda,*)
c
c Compute y = A*x, where A is m by n and stored in an array
c with leading dimension lda.
c
c Local variables
      integer i, j
      
c Initialize y
      do 10 i = 1, m
         y(i) = 0.0
   10 continue

c Matrix-vector product by saxpy on columns in A.
c Notice that the length of each column of A is m, not n!
      do 20 j = 1, n
         call saxpy (m, x(j), A(1,j), y)
   20 continue

      return
      end
