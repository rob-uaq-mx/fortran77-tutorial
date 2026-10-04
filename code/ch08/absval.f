c Fragment from chapter8-if.tex: the logical if statement.
c --- added: program, declaration, input and output ---
      program absval
      implicit none
      real x
      read(*,*) x
      if (x .LT. 0) x = -x
      write(*,*) '|x| =', x
      end
