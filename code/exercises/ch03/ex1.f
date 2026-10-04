c Solution to exercise 3.1: Celsius to Fahrenheit.
      program ctof
      real celsius, fahr

      write (*,*) 'Enter temperature in Celsius:'
      read (*,*) celsius

c Note 9.0/5.0, not 9/5: with integers, 9/5 would be 1 (see Chapter 6)
      fahr = 9.0/5.0 * celsius + 32.0

      write (*,*) celsius, ' degrees Celsius equals'
      write (*,*) fahr, ' degrees Fahrenheit'

      stop
      end
