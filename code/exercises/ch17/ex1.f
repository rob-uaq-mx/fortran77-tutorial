c Solution to exercise 17.1: a multiplication table with formats.
      program multab
      implicit none
      integer i, j

c Heading: 4 blanks, then the numbers 1 to 9 in fields of width 4
      write (*,100) (j, j = 1, 9)
      write (*,110)
      do 20 i = 1, 9
         write (*,120) i, (i*j, j = 1, 9)
   20 continue

  100 format (4X, 9I4)
  110 format (4X, 36('-'))
  120 format (I2, ' |', 9I4)

      stop
      end
