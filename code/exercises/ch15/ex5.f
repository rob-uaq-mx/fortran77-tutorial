c Solution to exercise 15.5: the same 1000 real numbers are written to
c a formatted (text) file and to an unformatted (binary) file. Compare
c the sizes of the two files (with dir or ls -l) after running the
c program.
      program fsize
      implicit none
      integer n, i
      parameter (n = 1000)
      real x(n)

      do 10 i = 1, n
         x(i) = sqrt(real(i))
   10 continue

      open (22, file='text.dat', form='formatted', status='unknown')
      do 20 i = 1, n
         write (22,*) x(i)
   20 continue
      close (22)

      open (23, file='binary.dat', form='unformatted',
     &      status='unknown')
      write (23) (x(i), i = 1, n)
      close (23)

      write (*,*) 'Wrote text.dat and binary.dat'

      stop
      end
