c Solution to exercise 6.5: converting a real to double precision does not
c make it more accurate.
      program third
      implicit none
      real x
      double precision d1, d2

      x = 1.0/3.0
      d1 = dble(x)
      d2 = 1.0D0/3.0D0

      write (*,*) 'real 1/3:            ', x
      write (*,*) 'dble of the real 1/3:', d1
      write (*,*) 'double 1/3:          ', d2

      stop
      end
