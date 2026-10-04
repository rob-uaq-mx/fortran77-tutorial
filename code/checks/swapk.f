c From chapter11-subprograms-enhanced.tex, line 246
c Expected to fail: iswap tries to change the constant 1. With
c gfortran the program crashes (segmentation fault).
      program swapk
      implicit none
      integer n

      n = 5
      call iswap(1, n)
      write(*,*) 'n =', n

      stop
      end
