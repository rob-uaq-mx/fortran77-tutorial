c From chapter12-arrays2.tex, line 97
      subroutine scale(n, alpha, x)
      implicit none
      integer n
      real alpha, x(*)
c
c Local variables
      integer i

      do 10 i = 1, n
         x(i) = alpha * x(i)
   10 continue

      return
      end
