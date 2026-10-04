c From chapter5-variables-enhanced2.tex, line 27
      program variables_demo
      integer i, count, sum
      real x, y, average
      double precision bignum, smallnum
      logical flag1, flag2
      character*10 firstname
      character*15 lastname
      
c This program demonstrates variable declarations
      
      i = 10
      count = 25
      sum = i + count
      
      x = 3.14159
      y = 2.71828
      average = (x + y) / 2.0
      
      bignum = 1.23456789D+15
      smallnum = 9.87654321D-12
      
      flag1 = .TRUE.
      flag2 = .FALSE.
      
      firstname = 'John'
      lastname = 'Smith'
      
      write (*,*) 'Integer values:'
      write (*,*) '  i =', i, '  count =', count, '  sum =', sum
      write (*,*) 'Real values:'
      write (*,*) '  x =', x, '  y =', y, '  average =', average
      write (*,*) 'Double precision values:'
      write (*,*) '  bignum =', bignum
      write (*,*) '  smallnum =', smallnum
      write (*,*) 'Logical values:'
      write (*,*) '  flag1 =', flag1, '  flag2 =', flag2
      write (*,*) 'Character values:'
      write (*,*) '  firstname =', firstname
      write (*,*) '  lastname =', lastname
      
      stop
      end
