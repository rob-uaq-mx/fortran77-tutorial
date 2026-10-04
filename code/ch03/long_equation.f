c From chapter3-basics-enhanced.tex, line 158
      program long_equation
      real x, y, result
      
c This program calculates a complex formula using continuation lines
      
      x = 2.5
      y = 3.7
      
      result = 3.14159265358979 * x**2 + 2.71828182846 * y**2 
     +         + 1.4142135623 * x * y + (x + y) / 2.0
     +         - (x - y)**2
      
      write (*,*) 'x = ', x, ' y = ', y
      write (*,*) 'Result = ', result
      
      stop
      end
