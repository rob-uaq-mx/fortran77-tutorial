c Solution to exercise 9.1: factorials with integer and double
c precision arithmetic.
      program fact
      implicit none
      integer n, ifact
      double precision dfact

      ifact = 1
      dfact = 1.0D0
      do 10 n = 1, 15
         ifact = ifact * n
         dfact = dfact * dble(n)
         write (*,*) n, ifact, dfact
   10 continue

      stop
      end
