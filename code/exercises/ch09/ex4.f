c Solution to exercise 9.4: the sum of 1/k**2 for k = 1, ..., n
c approaches pi**2/6 (Euler, 1734). The sum is computed in double
c precision; note dble(k) to avoid an integer division (1/k**2 would
c be 0 for every k > 1).
      program basel
      implicit none
      integer k, n
      double precision sum, exact, pi
      parameter (pi = 3.14159265358979D0)

      n = 1000
      sum = 0.0D0
      do 10 k = 1, n
         sum = sum + 1.0D0 / dble(k)**2
   10 continue

      exact = pi**2 / 6.0D0
      write (*,*) 'Sum of', n, ' terms:', sum
      write (*,*) 'pi**2/6:             ', exact
      write (*,*) 'Difference:          ', exact - sum

      stop
      end
