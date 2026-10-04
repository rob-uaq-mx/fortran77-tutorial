c Solution to exercise 8.3: a year is a leap year if it is divisible by
c 4, except the years divisible by 100, which are leap years only if they
c are also divisible by 400. The program reads several years, until the
c end of the input.
      program leap
      implicit none
      integer year
      logical isleap

   10 read (*,*,end=99) year
      isleap = mod(year, 4) .EQ. 0 .AND.
     +         (mod(year, 100) .NE. 0 .OR. mod(year, 400) .EQ. 0)
      if (isleap) then
         write (*,*) year, ' is a leap year'
      else
         write (*,*) year, ' is not a leap year'
      endif
      goto 10

   99 stop
      end
