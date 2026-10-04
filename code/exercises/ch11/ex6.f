c Solution to exercise 11.6: a subroutine that converts the cartesian
c coordinates (x, y) of a point to polar coordinates (r, theta). A
c function could only return one of the two values.
      program topol
      implicit none
      real x, y, r, theta

   10 read (*,*,end=99) x, y
      call polar(x, y, r, theta)
      write (*,*) x, y, ' ->', r, theta
      goto 10

   99 stop
      end

c theta is in degrees, between -180 and 180
      subroutine polar(x, y, r, theta)
      implicit none
      real x, y, r, theta
      real pi
      parameter (pi = 3.14159265)

      r = sqrt(x**2 + y**2)
      theta = atan2(y, x) * 180.0 / pi

      return
      end
