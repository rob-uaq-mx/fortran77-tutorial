c Solution to exercise 6.4: the volume of a sphere. The first formula is
c wrong: 4/3 is an integer division, which gives 1, so v1 is pi*r**3.
c The second one writes the constants as reals.
      program sphere
      implicit none
      real pi
      parameter (pi = 3.14159265)
      real r, v1, v2

      write (*,*) 'Give radius r:'
      read (*,*) r

      v1 = 4/3*pi*r**3
      v2 = 4.0/3.0*pi*r**3

      write (*,*) 'With 4/3:     ', v1
      write (*,*) 'With 4.0/3.0: ', v2

      stop
      end
