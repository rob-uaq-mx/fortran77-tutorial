c Fragment from chapter10-arrays.tex, section "One-dimensional arrays".
c --- added: program and output ---
      program square
      implicit none
      integer i, sq(10)

      do 100 i = 1, 10
         sq(i) = i**2
  100 continue
      write(*,*) sq
      end
