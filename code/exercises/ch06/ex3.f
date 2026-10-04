c Solution to exercise 6.3: the values of some expressions, to check the
c predictions made by hand.
      program preds
      implicit none
      write (*,*) '2**3**2      =', 2**3**2
      write (*,*) '-3**2        =', -3**2
      write (*,*) '7/2*2        =', 7/2*2
      write (*,*) '7/2.0*2      =', 7/2.0*2
      write (*,*) '2+3*4**2/8   =', 2+3*4**2/8
      write (*,*) '(2+3)*4**2/8 =', (2+3)*4**2/8
      stop
      end
