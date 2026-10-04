c Fragment from chapter10-arrays.tex, section "Two-dimensional arrays":
c only the upper 3 by 3 part of a 3 by 5 array is used.
c --- added: program and output of the part that is used ---
      program submat
      implicit none
      real A(3,5)
      integer i,j
c
c     We will only use the upper 3 by 3 part of this array.
c
      do 20 j = 1, 3
         do 10 i = 1, 3
            a(i,j) = real(i)/real(j)
   10    continue
   20 continue
      do 30 i = 1, 3
         write(*,'(3F8.3)') (a(i,j), j=1,3)
   30 continue
      end
