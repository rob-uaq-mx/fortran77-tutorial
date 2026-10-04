c From chapter13-common-enhanced.tex, line 194
      program blankc
      implicit none
      real x, y
      integer n
      common x, y, n

      x = 1.0
      y = 2.0
      n = 3
      call sub

      write(*,*) 'After sub: x =', x, ' y =', y, ' n =', n

      stop
      end

      subroutine sub
      implicit none
      real a, b
      integer i
      common a, b, i

      write(*,*) 'In sub: a =', a, ' b =', b, ' i =', i
      a = 10.0
      b = 20.0
      i = 30

      return
      end
