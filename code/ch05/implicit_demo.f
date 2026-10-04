c From chapter5-variables-enhanced2.tex, line 246
      program implicit_demo
      implicit none
      
c All variables must be declared when using implicit none
      integer i, j
      real x, y
      
c Without declarations, these would cause compiler errors:
c     k = 10
c     z = 3.14
      
      i = 5
      j = 10
      x = 2.5
      y = 3.5
      
      write (*,*) i*j, x*y
      
      stop
      end
