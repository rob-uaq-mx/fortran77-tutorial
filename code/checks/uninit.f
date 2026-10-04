c Exercise 20.3 (chapter20-debug.tex): the variable s is used before
c it is given a value. The result depends on whatever is in memory.
c Compiled with -finit-real=snan -ffpe-trap=invalid the program stops
c at the first use of s. Expected to give a wrong result.
      program uninit
      implicit none
      integer i
      real s

      do 10 i = 1, 10
         s = s + real(i)
   10 continue
      write (*,*) 'Sum =', s
      end
