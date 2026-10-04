c Solution to exercise 14.1: the number of days of each month is given
c with a data statement; the program reads dates (month and day) and
c prints the day of the year (for a year that is not a leap year).
      program dayno
      implicit none
      integer mdays(12), month, day, n, i
      data mdays /31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31/

   10 read (*,*,end=99) month, day
      n = day
      do 20 i = 1, month - 1
         n = n + mdays(i)
   20 continue
      write (*,*) month, day, ' is day', n
      goto 10

   99 stop
      end
