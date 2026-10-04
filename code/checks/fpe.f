c Exercise 20.2 (chapter20-debug.tex): the square root of a negative
c number gives NaN, which spreads to the later results without any
c message. Compiled with -ffpe-trap=invalid the program stops at the
c faulty operation. Expected to give a wrong result.
      program fpe
      implicit none
      real x, y, z

      read (*,*) x
      y = sqrt(x)
      z = 2.0*y + 1.0
      write (*,*) 'y =', y, '  z =', z
      end
