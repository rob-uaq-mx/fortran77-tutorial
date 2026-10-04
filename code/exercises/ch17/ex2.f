c Solution to exercise 17.2: build file names with an internal file,
c write one line to each file, then read the files back (and delete
c them).
      program nfiles
      implicit none
      integer u, k, m
      parameter (u = 20)
      character*12 fname
      character*40 line

      do 10 k = 1, 5
         write (fname, '(A,I3.3,A)') 'out', k, '.txt'
         open (u, file=fname, status='unknown')
         write (u, '(A,I2)') 'This is file number', k
         close (u)
   10 continue

      do 20 k = 1, 5
         write (fname, '(A,I3.3,A)') 'out', k, '.txt'
         open (u, file=fname, status='old')
         read (u, '(A)') line
         close (u, status='delete')
c Read the number back from the text with another internal read
         read (line(20:21), '(I2)') m
         write (*,*) fname, ': ', line(1:21), '   (number', m, ')'
   20 continue

      stop
      end
