c Fragment from chapter8-if.tex, section "Nested if statements".
c --- added: program, and a loop that reads several (x, y) pairs
c until the end of the input, to try all the branches ---
      program nestif
      implicit none
      real x, y
   10 read(*,*,end=99) x, y
      write(*,*) 'x =', x, ' y =', y
      if (x .GT. 0) then
         if (x .GE. y) then
            write(*,*) 'x is positive and x >= y'
         else
            write(*,*) 'x is positive but x < y'
         endif
      elseif (x .LT. 0) then
         write(*,*) 'x is negative'
      else
         write(*,*) 'x is zero'
      endif
      goto 10
   99 continue
      end
