c Solution to exercise 5.7: int truncates towards zero, nint rounds to
c the nearest integer (halves are rounded away from zero).
      program rounds
      implicit none
      real x(4)
      integer i
      x(1) = 2.7
      x(2) = -2.7
      x(3) = 2.5
      x(4) = -2.5
      do 10 i = 1, 4
         write (*,*) 'x =', x(i), '  int(x) =', int(x(i)),
     +               '  nint(x) =', nint(x(i))
   10 continue
      stop
      end
