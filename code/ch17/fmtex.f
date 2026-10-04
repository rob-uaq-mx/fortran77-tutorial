c From chapter17-format-enhanced.tex, line 53
      program fmtex
      implicit none
      real x
      integer i

      x = 0.025
      i = 42
      write(*,100) 'x=', x
  100 format (A,F8.4)
      write(*,110) 'x=', x
  110 format (A,F5.3)
      write(*,120) 'x=', x
  120 format (A,E12.4)
      write(*,130) 'x=', x
  130 format (A,E8.1)
      write(*,140) 'i=', i, 'x=', 123.456
  140 format (A,I4,2X,A,F6.2)
      write(*,150) 'i=', i, 'x=', 123.456
  150 format (A,I1,2X,A,F4.2)

      stop
      end
