c From chapter3-basics-enhanced.tex, line 90
      program temperature
      real fahr, celsius
      
c This program converts Fahrenheit to Celsius
      
      write (*,*) 'Enter temperature in Fahrenheit:'
      read (*,*) fahr
      
      celsius = (fahr - 32.0) * 5.0 / 9.0
      
      write (*,*) fahr, ' degrees Fahrenheit equals'
      write (*,*) celsius, ' degrees Celsius'
      
      stop
      end
