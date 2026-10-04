c From chapter5-variables-enhanced2.tex, line 273
      program type_conversion
      implicit none
      integer i, j
      real x, y
      
c This program demonstrates type conversion
      
      i = 5
      j = 2
      
      write (*,*) 'Integer division:', i/j
      write (*,*) 'Real division:', real(i)/real(j)
      
      x = 3.7
      y = 2.2
      
      write (*,*) 'Real values: x =', x, ' y =', y
      write (*,*) 'Truncated to integers:', int(x), int(y)
      write (*,*) 'Rounded to integers:', 
     +             nint(x), nint(y)
      
      write (*,*) 'Character to integer:'
      write (*,*) '  Code for ''A'' =', ichar('A')
      write (*,*) '  Code for ''a'' =', ichar('a')
      write (*,*) 'Integer to character:'
      write (*,*) '  Character with code 66 =', char(66)
      write (*,*) '  Character with code 98 =', char(98)
      
      stop
      end
