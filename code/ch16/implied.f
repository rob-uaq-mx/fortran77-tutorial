c From chapter16-readwrite.tex, section "Implied do-loops"
      program implid
      implicit none
      integer n, i, j
      real x(10), A(3,3)

      read(*,*) n
      read(*,*) (x(i), i = 1, n)
      write(*,*) 'x:', (x(i), i = 1, n)
      write(*,*) 'Odd positions:', (x(i), i = 1, n, 2)

      do 20 j = 1, 3
         do 10 i = 1, 3
            A(i,j) = real(10*i + j)
   10    continue
   20 continue
      write(*,*) 'A, row by row:'
      do 30 i = 1, 3
         write(*,*) (A(i,j), j = 1, 3)
   30 continue
      write(*,*) 'A in memory order:'
      write(*,*) ((A(i,j), i = 1, 3), j = 1, 3)
      end
