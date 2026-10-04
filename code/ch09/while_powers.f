c Fragment from chapter9-loops-enhanced.tex, section "while-loops"
c (powers of two up to 100).
c --- added: program ---
      program whpow
      implicit none
      integer n

      n = 1
   10 if (n .le. 100) then
         write (*,*) n
         n = 2*n
         goto 10
      endif
      end
