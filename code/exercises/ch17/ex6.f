c Solution to exercise 17.6: a format built at run time. The number of
c decimals is read, and the format string is written into a character
c variable (an internal file) before it is used.
      program vfmt
      implicit none
      character*20 fmt
      integer nd
      real x

      x = 3.14159265
   10 read (*,*,end=99) nd
      if (nd .LT. 0 .OR. nd .GT. 7) then
         write (*,*) 'The number of decimals must be between 0 and 7'
         goto 10
      endif
      write (fmt,'(A,I1,A)') '(A,I1,A,F10.', nd, ')'
      write (*,fmt) 'With ', nd, ' decimals: ', x
      goto 10

   99 stop
      end
