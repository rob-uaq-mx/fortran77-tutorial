c Solution to exercise 3.3: the program with its column errors fixed.
c  - Line 1: "program" started in column 6, which made it a
c    continuation line. Statements start in column 7 or later.
c  - Line 4: "height" started in column 4, inside the label field
c    (columns 1-5), which may only contain a statement number.
c  - Lines 6-7: the second line of the write statement had no
c    continuation mark in column 6.
      program errors
      real base, height
      base = 2.0
      height = 3.0
* Area of a triangle
      write (*,*) 'Area of the triangle:',
     +            0.5*base*height
      end
