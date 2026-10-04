c Solution to exercise 20.2: check the argument before taking the
c square root, instead of letting a NaN spread through the results.
      program fpeok
      implicit none
      real x, y, z

   10 read (*,*,end=99) x
      if (x .LT. 0.0) then
         write (*,*) 'x =', x, ': no real square root'
      else
         y = sqrt(x)
         z = 2.0*y + 1.0
         write (*,*) 'y =', y, '  z =', z
      endif
      goto 10

   99 stop
      end
