c Solution to exercise 5.9: assignment to a character variable that is
c too short truncates the string; one that is too long pads it with
c blanks.
      program trunc5
      implicit none
      character*5 short
      character*10 long

      short = 'Fortran'
      long = 'Fortran'
      write (*,*) '[', short, ']'
      write (*,*) '[', long, ']'

      stop
      end
