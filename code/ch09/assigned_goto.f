c Fragment from chapter9-loops-enhanced.tex, section "Assigned goto".
c Deleted from the standard in Fortran 95: gfortran warns with -Wall
c and gives an error with -std=f95 or later.
c --- added: program and messages ---
      program asgoto
      implicit none
      integer route
      assign 200 to route
      goto route, (100, 200, 300)
  100 continue
      write(*,*) 'at 100'
      goto 999
  200 continue
      write(*,*) 'at 200'
      goto 999
  300 continue
      write(*,*) 'at 300'
  999 continue
      end
