c Fragment from chapter9-loops-enhanced.tex, section "do-loops"
c (cumulative sums).
c --- added: program and a value for n ---
      program cumsum
      implicit none
      integer i, n, sum
      n = 5

      sum = 0
      do 10 i = 1, n
         sum = sum + i
         write(*,*) 'i =', i
         write(*,*) 'sum =', sum
  10  continue
      end
