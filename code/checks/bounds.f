c From chapter20-debug.tex, line 31
c Expected to fail: writes x(11) in an array of 10 elements. With
c -fcheck=bounds (used by run_tests.sh) gfortran reports the error.
      program bounds
      implicit none
      real x(10)
      integer i

      do 10 i = 1, 11
         x(i) = real(i)
   10 continue
      write(*,*) x(1)

      stop
      end
