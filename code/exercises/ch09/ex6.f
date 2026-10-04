c Solution to exercise 9.6: the Collatz sequence. Starting from n, if n
c is even it is halved, otherwise it becomes 3n+1; the sequence (it is
c believed) always reaches 1. The loop is a while-loop built with if and
c goto.
      program collat
      implicit none
      integer n, steps

      write (*,*) 'Starting value:'
      read (*,*) n
      steps = 0

   10 if (n .NE. 1) then
         if (mod(n, 2) .EQ. 0) then
            n = n / 2
         else
            n = 3*n + 1
         endif
         steps = steps + 1
         write (*,*) n
         goto 10
      endif

      write (*,*) 'Reached 1 after', steps, ' steps'

      stop
      end
