c Solution to exercise 20.1: the program checks/col72.f with the
c statement written well inside columns 7 to 72.
      program col72
      implicit none
      real a, b, total
      a = 1.0
      b = 2.0
      total = a + b + 25
      write (*,*) 'total =', total
      end
