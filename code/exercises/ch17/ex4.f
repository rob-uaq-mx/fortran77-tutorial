c Solution to exercise 17.4: the squares of 1 to 25, eight on each line,
c with a single write statement (format reversion).
      program sqrows
      implicit none
      integer i

      write (*,100) (i*i, i = 1, 25)
  100 format (8I6)

      stop
      end
