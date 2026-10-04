c Solution to exercise 11.3: a statement function that converts degrees
c Fahrenheit to degrees Celsius, used to print a conversion table.
      program ftoc
      implicit none
      real f, f2c, tf
      integer i

c Statement function: Celsius temperature for tf degrees Fahrenheit
      f2c(tf) = (tf - 32.0) * 5.0 / 9.0

      write (*,*) 'Fahrenheit    Celsius'
      do 10 i = 0, 10
         f = 10.0 * real(i)
         write (*,*) f, f2c(f)
   10 continue

      stop
      end
