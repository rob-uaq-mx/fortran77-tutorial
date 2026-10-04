c From chapter13-common-enhanced.tex, line 258
      program incl
      implicit none
      real x
      INCLUDE 'params.inc'

      alpha = 1.0
      beta = 2.0
      call sub1(x)
      write(*,*) 'x =', x, ' alpha =', alpha, ' beta =', beta

      stop
      end

      subroutine sub1(x)
      implicit none
      real x
      INCLUDE 'params.inc'

      x = alpha + beta
      alpha = 3.0

      return
      end
