c Solution to exercise 10.2: a 3 by 4 matrix and its transpose.
      program transp
      implicit none
      integer m, n
      parameter (m = 3, n = 4)
      integer A(m,n), B(n,m), i, j

      do 20 j = 1, n
         do 10 i = 1, m
            A(i,j) = 10*i + j
            B(j,i) = A(i,j)
   10    continue
   20 continue

      write (*,*) 'A:'
      do 30 i = 1, m
         write (*,'(4I5)') (A(i,j), j = 1, n)
   30 continue

      write (*,*) 'Transpose of A:'
      do 40 i = 1, n
         write (*,'(3I5)') (B(i,j), j = 1, m)
   40 continue

      stop
      end
