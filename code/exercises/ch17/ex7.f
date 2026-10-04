c Solution to exercise 17.7: the parameters of a grid are read with
c NAMELIST; the values that are not given keep their defaults.
      program grid
      implicit none
      integer nx, ny
      real xmin, xmax, dx
      namelist /grdpar/ nx, ny, xmin, xmax

      nx = 11
      ny = 11
      xmin = 0.0
      xmax = 1.0

      read (*, nml=grdpar)
      dx = (xmax - xmin) / real(nx - 1)
      write (*, nml=grdpar)
      write (*,'(A,F8.4)') 'dx = ', dx

      stop
      end
