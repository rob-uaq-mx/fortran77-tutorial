c Template from chapter9-loops-enhanced.tex, section "until-loops",
c turned into a concrete example: double n until n > 100.
c --- added: everything except the label/continue/if-goto structure ---
      program until
      implicit none
      integer n
      n = 1
   10 continue
         write (*,*) n
         n = 2*n
      if (.not. (n .gt. 100)) goto 10
      end
