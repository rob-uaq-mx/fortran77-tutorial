c Solution to exercise 16.3: read a 3 by 3 matrix row by row (one row
c on each line) and print its transpose row by row.
      program trrows
      implicit none
      integer n
      parameter (n = 3)
      real A(n,n)
      integer i, j

      do 10 i = 1, n
         read (*,*) (A(i,j), j = 1, n)
   10 continue

      write (*,*) 'Transpose:'
      do 20 j = 1, n
         write (*,*) (A(i,j), i = 1, n)
   20 continue

      stop
      end
