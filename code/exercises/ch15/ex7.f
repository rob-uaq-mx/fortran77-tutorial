c Solution to exercise 15.7: read numbers from a file that may contain
c bad data, with IOSTAT: a positive value means an error (the line is
c reported and skipped), a negative value means the end of the file.
      program badnum
      implicit none
      integer ios, line, ngood
      real x, sum

      open (41, file='values.dat', status='old')
      line = 0
      ngood = 0
      sum = 0.0
   10 read (41, *, iostat=ios) x
      line = line + 1
      if (ios .GT. 0) then
         write (*,*) 'Bad data on line', line, ': skipped'
         goto 10
      else if (ios .LT. 0) then
         goto 20
      endif
      ngood = ngood + 1
      sum = sum + x
      goto 10

   20 close (41)
      write (*,*) ngood, ' good values, sum =', sum

      stop
      end
