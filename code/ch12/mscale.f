c From chapter12-arrays2.tex, line 129
      subroutine mscale(m, n, alpha, A, lda)
      implicit none
      integer m, n, lda
      real alpha, A(lda,*)
c
c Local variables
      integer j

      do 10 j = 1, n
         call scale(m, alpha, A(1,j) )
   10 continue

      return
      end
