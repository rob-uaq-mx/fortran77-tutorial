c Solution to exercise 5.3: circumference and area of a circle, with pi
c defined once in a parameter statement.
      program circ2
      implicit none
      real pi
      parameter (pi = 3.14159265)
      real r, circum, area

      write (*,*) 'Give radius r:'
      read (*,*) r

      circum = 2.0*pi*r
      area = pi*r*r

      write (*,*) 'Circumference = ', circum
      write (*,*) 'Area          = ', area

      stop
      end
