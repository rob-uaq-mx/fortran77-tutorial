c From chapter3-basics-enhanced.tex, line 40
      program arithmetic
      integer a, b, sum, diff, prod
      real quotient
      
c This program demonstrates basic arithmetic operations
      
      a = 15
      b = 4
      
      sum = a + b
      diff = a - b
      prod = a * b
      quotient = real(a) / real(b)
      
      write (*,*) 'a = ', a, ' b = ', b
      write (*,*) 'Sum: ', sum
      write (*,*) 'Difference: ', diff
      write (*,*) 'Product: ', prod
      write (*,*) 'Quotient: ', quotient
      
      stop
      end
