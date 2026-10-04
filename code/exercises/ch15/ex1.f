c Solution to exercise 15.1: write a table of sin(x) to a file, then
c read it back and find the largest value.
      program sintab
      implicit none
      integer u, n, i, imax
      parameter (u = 20, n = 11)
      real pi, x, y, xmax, ymax
      parameter (pi = 3.14159265)

c Write the table: n points from 0 to pi
      open (u, file='sine.dat', status='unknown')
      do 10 i = 0, n-1
         x = pi * real(i) / real(n-1)
         write (u,*) x, sin(x)
   10 continue
      close (u)

c Read it back and look for the maximum
      open (u, file='sine.dat', status='old')
      ymax = -2.0
      xmax = 0.0
      imax = 0
      do 20 i = 1, n
         read (u,*) x, y
         if (y .GT. ymax) then
            ymax = y
            xmax = x
            imax = i
         endif
   20 continue
      close (u)

      write (*,*) 'Largest value', ymax, ' at x =', xmax,
     +            ' (line', imax, ')'

      stop
      end
