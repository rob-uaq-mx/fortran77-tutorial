c From chapter9-loops-enhanced.tex, line 64
      program trips
      implicit none
      integer i, n

      n = 0
      do 10 i = 1, n
         write (*,*) 'This line is never printed'
   10 continue
      write (*,*) 'After the loop, i =', i

      do 20 i = 10, 1, -3
         write (*,*) 'i =', i
   20 continue
      write (*,*) 'After the loop, i =', i

      stop
      end
