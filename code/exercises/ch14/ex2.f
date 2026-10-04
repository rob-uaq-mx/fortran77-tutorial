c Solution to exercise 14.2: the values are assigned in column-first
c order, so B is
c      1.0   2.0   2.0
c      1.0   2.0   3.0
      program datab
      implicit none
      real B(2,3)
      integer i, j
      data B /2*1.0, 3*2.0, 3.0/

      do 10 i = 1, 2
         write (*,*) (B(i,j), j = 1, 3)
   10 continue

      stop
      end
