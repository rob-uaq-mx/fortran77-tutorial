c Solution to exercise 11.4: a real function dist that returns the
c distance between two points, used to compute the perimeter of a
c triangle.
      program perim
      implicit none
      real dist, ax, ay, bx, by, cx, cy, p

      ax = 0.0
      ay = 0.0
      bx = 3.0
      by = 0.0
      cx = 0.0
      cy = 4.0
      p = dist(ax, ay, bx, by) + dist(bx, by, cx, cy)
     &  + dist(cx, cy, ax, ay)
      write (*,*) 'Perimeter:', p

      stop
      end

      real function dist(x1, y1, x2, y2)
      implicit none
      real x1, y1, x2, y2

      dist = sqrt((x2 - x1)**2 + (y2 - y1)**2)

      return
      end
