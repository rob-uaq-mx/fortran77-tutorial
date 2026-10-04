c Solution to exercise 8.2: real roots of a*x**2 + b*x + c = 0.
c Reads several equations, one per line, until the end of the input.
      program quadr
      implicit none
      real a, b, c, disc, x1, x2

   10 read (*,*,end=99) a, b, c
      write (*,*) 'a, b, c =', a, b, c
      if (a .EQ. 0.0) then
         write (*,*) '   Not a quadratic equation'
      else
         disc = b**2 - 4.0*a*c
         if (disc .GT. 0.0) then
            x1 = (-b + sqrt(disc)) / (2.0*a)
            x2 = (-b - sqrt(disc)) / (2.0*a)
            write (*,*) '   Two roots:', x1, x2
         elseif (disc .EQ. 0.0) then
            x1 = -b / (2.0*a)
            write (*,*) '   One (double) root:', x1
         else
            write (*,*) '   No real roots'
         endif
      endif
      goto 10

   99 stop
      end
