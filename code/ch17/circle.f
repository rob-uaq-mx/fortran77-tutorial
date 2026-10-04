c From chapter17-format-enhanced.tex, line 201
      program circle
      implicit none
      integer u, n
      parameter (u = 10)
      real r, carea

      open (u, file='radii.dat', status='old', err=900)

      write (*,'(A)') '   Radius        Area'
      write (*,'(A)') '  -------  ----------'
      n = 0
   10 read (u, *, end=20) r
         n = n + 1
         write (*,'(F9.3, F12.4)') r, carea(r)
         goto 10
   20 continue
      close (u)
      write (*,'(I4, A)') n, ' circles'
      stop

  900 write (*,*) 'Cannot open the file radii.dat'
      stop
      end

      real function carea(r)
      implicit none
      real r, pi
      parameter (pi = 3.14159265)

      carea = pi * r * r

      return
      end
