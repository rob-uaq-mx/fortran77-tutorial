c Solution to exercise 9.3: a table of squares and cubes.
      program powers
      implicit none
      integer i

      write (*,*) '   n   n**2   n**3'
      do 10 i = 1, 10
         write (*,*) i, i**2, i**3
   10 continue

      stop
      end
