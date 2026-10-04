c From chapter6-expressions-enhanced.tex, line 153
      program dblmul
      implicit none
      real x, y
      double precision w1, w2

      x = 4097.0
      y = 4097.0
      w1 = dble(x)*dble(y)
      w2 = dble(x*y)
      write (*,*) 'dble(x)*dble(y) =', w1
      write (*,*) 'dble(x*y)       =', w2

      x = 1.1
      write (*,*) 'dble(1.1)       =', dble(x)
      write (*,*) '1.1D0           =', 1.1D0

      stop
      end
