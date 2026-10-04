c Exercise 19.3: a program with several extensions to Fortran 77.
c Compile it with  gfortran -std=f95 -Wall ext.f  and see which of them
c are reported (see answers.md).
      program extens
      implicit none
      real*8 total_sum
      integer i
      total_sum = 0.0d0
      i = 1
      do while (i .le. 10)
         total_sum = total_sum + dble(i)   ! add the next value
         i = i + 1
      enddo
      write (*,*) total_sum
      end
