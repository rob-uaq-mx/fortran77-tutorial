c Fragment from chapter9-loops-enhanced.tex, section "do-loops": the
c loop bounds are evaluated only once, so this loop doubles j.
c --- added: program ---
      program bounds
      implicit none
      integer i,j

      read (*,*) j
      do 20 i = 1, j
         j = j + 1
  20  continue
      write (*,*) j
      end
