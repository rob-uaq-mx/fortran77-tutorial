c Solution to exercise 5.6: the average of three integers, computed
c wrongly (integer division) and correctly (converting to real first).
      program avgint
      implicit none
      integer a, b, c
      real wrong, right

      a = 7
      b = 8
      c = 8
      wrong = (a + b + c) / 3
      right = real(a + b + c) / 3.0

      write (*,*) 'Integer division: ', wrong
      write (*,*) 'Real division:    ', right

      stop
      end
