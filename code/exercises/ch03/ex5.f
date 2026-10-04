c Solution to exercise 3.5: a statement that goes beyond column 72.
c The number 25 starts in column 72, so its last digit (the 5) is in
c column 73 and the compiler ignores it: the program computes
c a + b + 2 = 5 instead of a + b + 25 = 28, without any error message.
c Compiled with -Wall, gfortran warns: Line truncated at (1).
c The ruler below shows the column numbers (last digit of each).
      program trunc
      real a, b, total
      a = 1.0
      b = 2.0
c23456789012345678901234567890123456789012345678901234567890123456789012
      total = a + b +                                                  25
      write (*,*) 'total =', total
      end
