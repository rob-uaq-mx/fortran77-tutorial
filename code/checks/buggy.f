c Exercise 20.4 (chapter20-debug.tex): a program that should print the
c mean (4.0) and the sample variance (2.0) of five numbers. It has
c three errors. Expected to give a wrong result.
      program buggy
      real x(5), mean, var
      integer n, i
      data x /2.0, 4.0, 4.0, 4.0, 6.0/

      n = 5
      mean = 0.0
      do 10 i = 1, n
         mean = mean + x(i)
   10 continue
      mean = mean / n

      var = 0.0
      do 20 i = 1, n
         var = var + (x(i) - mean)**2
   20 continue
      varnce = var * (1/(n-1))

      write (*,*) 'Mean:    ', mean
      write (*,*) 'Variance:', var
      end
