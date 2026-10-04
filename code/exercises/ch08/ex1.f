c Solution to exercise 8.1: the largest of three numbers, using only
c if statements.
      program large3
      implicit none
      real a, b, c, big

      write (*,*) 'Enter three numbers:'
      read (*,*) a, b, c

      big = a
      if (b .GT. big) big = b
      if (c .GT. big) big = c

      write (*,*) 'The largest is', big

      stop
      end
