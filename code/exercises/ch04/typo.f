c Exercise 4.4: a program with a misspelled variable name (aera instead
c of area). Compile and run it in three ways:
c    gfortran typo.f -o typo                  (compiles; the result is wrong)
c    gfortran -Wall typo.f -o typo            (still no message!)
c    gfortran -fimplicit-none typo.f -o typo  (does not compile)
c See answers.md.
      program typo
      real r, area

      r = 2.0
      aera = 3.14159*r*r
      write (*,*) 'Area = ', area

      stop
      end
