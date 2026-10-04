c From chapter11-subprograms-enhanced.tex, line 202
      subroutine iswap (a, b)
      implicit none
      integer a, b
c Local variables
      integer tmp

      tmp = a
      a = b
      b = tmp

      return
      end
