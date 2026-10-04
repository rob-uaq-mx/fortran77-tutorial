c Solution to exercise 8.4: a letter grade from a score between 0 and
c 100, with an if-elseif chain. The program reads several scores, until
c the end of the input.
      program grade
      implicit none
      real score

   10 read (*,*,end=99) score
      if (score .LT. 0.0 .OR. score .GT. 100.0) then
         write (*,*) score, ' is not a valid score'
      elseif (score .GE. 90.0) then
         write (*,*) score, ' -> A'
      elseif (score .GE. 80.0) then
         write (*,*) score, ' -> B'
      elseif (score .GE. 70.0) then
         write (*,*) score, ' -> C'
      elseif (score .GE. 60.0) then
         write (*,*) score, ' -> D'
      else
         write (*,*) score, ' -> F'
      endif
      goto 10

   99 stop
      end
