c Solution to exercise 15.8: the program counts how many times it has
c been run, in the file runs.dat. INQUIRE tells whether the file
c already exists.
      program runcnt
      implicit none
      logical exists
      integer n

      inquire (file='runs.dat', exist=exists)
      if (exists) then
         open (51, file='runs.dat', status='old')
         read (51,*) n
         close (51)
      else
         n = 0
      endif

      n = n + 1
      open (51, file='runs.dat', status='unknown')
      write (51,*) n
      close (51)
      write (*,*) 'This program has been run', n, ' times'

      stop
      end
