c From chapter11-subprograms-enhanced.tex, line 223
      program callex
      implicit none
      integer m, n
c
      m = 1
      n = 2 

      call iswap(m, n)
      write(*,*) m, n

      stop
      end
