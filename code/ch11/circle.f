c From chapter11-subprograms-enhanced.tex, line 22
      program circle
      implicit none
      real r, area, pi, rad, carea
      parameter (pi = 3.14159)

c Statement function: area of a circle with radius rad
      carea(rad) = pi * rad * rad

c Main program
      write(*,*) 'Give radius r:'
      read(*,*) r
      area = carea(r)
      write(*,*) 'Area = ', area

      stop
      end
