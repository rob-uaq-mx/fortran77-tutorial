c Solution to exercise 15.2: count the lines of a text file whose name
c is given by the user.
      program nlines
      implicit none
      integer u, ios, n
      parameter (u = 20)
      character*80 fname, line

      write (*,*) 'File name:'
      read (*,'(A)') fname

      open (u, file=fname, status='old', iostat=ios)
      if (ios .NE. 0) then
         write (*,*) 'Cannot open the file ', fname
         stop
      endif

      n = 0
   10 read (u, '(A)', end=20) line
         n = n + 1
         goto 10
   20 continue
      close (u)

      write (*,*) 'The file has', n, ' lines'

      stop
      end
