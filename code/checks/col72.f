c From chapter20-debug.tex, section "Some common errors" (exercise
c 20.1). Expected to give a wrong result: the statement below has the
c 2 of 25 in column 72 and the 5 in column 73, which is ignored. The
c program computes a + b + 2 = 5 instead of 28. gfortran -Wall warns
c "Line truncated".
      program col72
      implicit none
      real a, b, total
      a = 1.0
      b = 2.0
      total = a + b +                                                  25
      write (*,*) 'total =', total
      end
