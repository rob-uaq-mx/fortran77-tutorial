c Exercise 4.3: a main program that calls a function that is in another
c file, funcs.f. (Functions are explained in Chapter 11.) Compile with
c    gfortran main.f funcs.f -o twofiles
c or in two steps, and with the Makefile in this directory.
      program twofil
      real r, area, carea

      write (*,*) 'Give radius r:'
      read (*,*) r
      area = carea(r)
      write (*,*) 'Area = ', area

      stop
      end
