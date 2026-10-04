c Solution to exercise 20.4: the program checks/buggy.f corrected.
c 1. implicit none, which reveals the misspelled variable varnce;
c 2. real division: 1/(n-1) is an integer division, and gives 0;
c 3. the variance, not the sum of squares, is printed.
      program bugfix
      implicit none
      real x(5), mean, var
      integer n, i
      data x /2.0, 4.0, 4.0, 4.0, 6.0/

      n = 5
      mean = 0.0
      do 10 i = 1, n
         mean = mean + x(i)
   10 continue
      mean = mean / real(n)

      var = 0.0
      do 20 i = 1, n
         var = var + (x(i) - mean)**2
   20 continue
      var = var / real(n - 1)

      write (*,*) 'Mean:    ', mean
      write (*,*) 'Variance:', var
      end
