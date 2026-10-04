c Solution to exercise 17.5: formatted input. Each line has a date
c written as yyyymmdd and a time hhmm, separated by one blank, e.g.
c 20240315 1250. The format reads the parts by columns.
      program datime
      implicit none
      integer year, month, day, hour, minute

   10 read (*,100,end=99) year, month, day, hour, minute
  100 format (I4, I2, I2, 1X, I2, I2)
      write (*,200) year, month, day, hour, minute
  200 format (I4, '-', I2.2, '-', I2.2, 2X, I2.2, ':', I2.2)
      goto 10

   99 stop
      end
