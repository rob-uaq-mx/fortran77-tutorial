c Fragment from chapter11-subprograms-enhanced.tex, section "Functions":
c x = cos(pi/3.0) is 0.5 if pi is correctly defined. The intrinsic
c functions are generic: the same name works for real and double.
c --- added: program and pi in both precisions ---
      program cosine
      implicit none
      real x, pi
      double precision xd, pid
      parameter (pi = 3.14159265, pid = 3.14159265358979d0)
      x = cos(pi/3.0)
      xd = cos(pid/3.0d0)
      write(*,*) 'cos(pi/3), real:   ', x
      write(*,*) 'cos(pi/3), double: ', xd
      end
