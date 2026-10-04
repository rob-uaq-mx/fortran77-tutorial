c Fragment from chapter9-loops-enhanced.tex, section "do-loops"
c (even numbers in decreasing order).
c --- added: program ---
      program evendn
      implicit none
      integer i

      do 20 i = 10, 1, -2
         write(*,*) 'i =', i
  20  continue
      end
