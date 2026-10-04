c Solution to exercise 5.5: the implicit typing rules at work. There is
c no implicit none and no declaration, so n is an integer (it starts
c with n) and x, y are real.
      program implic
      n = 3.7
      x = 7/2
      y = 7.0/2.0
      write (*,*) 'n =', n
      write (*,*) 'x =', x
      write (*,*) 'y =', y
      end
