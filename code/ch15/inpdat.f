c From chapter15-files-enhanced.tex, line 485
      program inpdat
c
c  This program reads n points from a data file and stores them in
c  3 arrays x, y, z. Then it computes their centroid and the point
c  farthest away from it.
c
      implicit none
      integer nmax, u
      parameter (nmax=1000, u=20)
      real x(nmax), y(nmax), z(nmax)
      real xc, yc, zc, d, dmax
      integer n, i, imax

c  Open the data file
      open (u, FILE='points.dat', STATUS='OLD')

c  Read the number of points
      read(u,*) n
      if (n .GT. nmax .OR. n .LT. 1) then
         write(*,*) 'Error: n = ', n, ' must be between 1 and ', nmax
         goto 9999
      endif

c  Loop over the data points
      do 10 i = 1, n
         read(u,100) x(i), y(i), z(i)
   10 continue
  100 format (3F10.4)

c  Close the file
      close (u)

c  Centroid: the average of the coordinates
      xc = 0.0
      yc = 0.0
      zc = 0.0
      do 20 i = 1, n
         xc = xc + x(i)
         yc = yc + y(i)
         zc = zc + z(i)
   20 continue
      xc = xc / real(n)
      yc = yc / real(n)
      zc = zc / real(n)

c  The point farthest away from the centroid
      imax = 1
      dmax = -1.0
      do 30 i = 1, n
         d = sqrt((x(i)-xc)**2 + (y(i)-yc)**2 + (z(i)-zc)**2)
         if (d .GT. dmax) then
            dmax = d
            imax = i
         endif
   30 continue

      write(*,*) 'Number of points:', n
      write(*,*) 'Centroid:', xc, yc, zc
      write(*,*) 'Farthest point is number', imax, ' at distance', dmax

 9999 stop
      end
