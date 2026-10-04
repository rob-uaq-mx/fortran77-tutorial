c Solution to exercise 19.3: the program ext.f in standard Fortran 77
c (except for lower case and implicit none, which every compiler
c accepts): double precision instead of real*8, a while loop built with
c if and goto, a six-character name and no comment at the end of a line.
      program extens
      implicit none
      double precision total
      integer i

      total = 0.0d0
      i = 1
c Add the values 1, 2, ..., 10
   10 if (i .LE. 10) then
         total = total + dble(i)
         i = i + 1
         goto 10
      endif
      write (*,*) total

      stop
      end
