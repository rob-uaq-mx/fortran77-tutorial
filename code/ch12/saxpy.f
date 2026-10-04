c From chapter12-arrays2.tex, line 18
      subroutine saxpy (n, alpha, x, y)
      implicit none
      integer n
      real alpha, x(*), y(*)
c
c Saxpy: Compute y := alpha*x + y,
c where x and y are vectors of length n (at least).
c
c Local variables
      integer i
c
      do 10 i = 1, n
         y(i) = alpha*x(i) + y(i)
   10 continue
c
      return
      end
