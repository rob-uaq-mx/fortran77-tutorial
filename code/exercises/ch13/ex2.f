c Exercise 13.2: the program of the exercise. The subroutine lists the
c variables of the common block in the opposite order, so its x is the
c y of the main program. The output is  x = 1.0  y = 12.0.
      program swapc
      implicit none
      real x, y
      common /c/ x, y

      x = 1.0
      y = 2.0
      call addten
      write (*,*) 'x =', x, '  y =', y

      stop
      end

      subroutine addten
      implicit none
      real x, y
      common /c/ y, x

      x = x + 10.0

      return
      end
