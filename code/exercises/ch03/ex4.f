c Solution to exercise 3.4: area of a triangle, with comments and a
c continuation line.
      program triang
      real base, height, area

c Read the data
      write (*,*) 'Enter the base and the height of the triangle:'
      read (*,*) base, height

c The formula is split over two lines on purpose, to show a
c continuation line (the + in column 6)
      area = 0.5 * base
     +           * height

      write (*,*) 'Area of the triangle:', area

      stop
      end
