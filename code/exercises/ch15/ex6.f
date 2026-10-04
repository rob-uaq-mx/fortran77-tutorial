c Solution to exercise 15.6: copy a text file, adding a line number at
c the beginning of each line.
      program numcpy
      implicit none
      character*80 line
      integer n

      open (31, file='poem.dat', status='old')
      open (32, file='poem.num', status='unknown')
      n = 0
   10 read (31, '(A)', end=20) line
      n = n + 1
      write (32,*) n, '  ', line
      goto 10

   20 close (31)
      close (32)
      write (*,*) n, ' lines copied to poem.num'

c Show the new file
      open (32, file='poem.num', status='old')
   30 read (32, '(A)', end=40) line
      write (*,*) line
      goto 30
   40 close (32, status='delete')

      stop
      end
