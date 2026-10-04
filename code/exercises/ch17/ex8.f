c Solution to exercise 17.8: the table of circle areas of the chapter,
c with a column for the circumference and the total area at the end.
      program circl2
      implicit none
      integer u, n
      parameter (u = 10)
      real r, a, total, pi
      parameter (pi = 3.14159265)

      open (u, file='radii.dat', status='old', err=900)

      write (*,'(A)') '   Radius        Area  Circumference'
      write (*,'(A)') '  -------  ----------  -------------'
      n = 0
      total = 0.0
   10 read (u, *, end=20) r
         n = n + 1
         a = pi * r * r
         total = total + a
         write (*,'(F9.3, F12.4, F15.4)') r, a, 2.0*pi*r
         goto 10
   20 continue
      close (u)
      write (*,'(A)') '  -------  ----------'
      write (*,'(A, F12.4)') '    Total', total
      write (*,'(I4, A)') n, ' circles'
      stop

  900 write (*,*) 'Cannot open the file radii.dat'
      stop
      end
