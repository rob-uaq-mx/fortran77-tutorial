c Fragment from chapter7-logical.tex, section "Logical variables and
c assignment". The text says that b is .FALSE.
c --- added: program and output ---
      program logic
      implicit none
      logical a, b
      a = .TRUE.
      b = a .AND. 3 .LT. 5/2
      write(*,*) 'b =', b
      end
