c Solution to exercise 9.5: count how many times each loop is executed,
c and compare with the formula max(0, (e2 - e1 + e3)/e3).
      program counts
      implicit none
      integer i, n

      n = 0
      do 10 i = 1, 10, 3
         n = n + 1
   10 continue
      write (*,*) 'do i = 1, 10, 3:   ', n, ' times'

      n = 0
      do 20 i = 10, 1
         n = n + 1
   20 continue
      write (*,*) 'do i = 10, 1:      ', n, ' times'

      n = 0
      do 30 i = 10, 1, -3
         n = n + 1
   30 continue
      write (*,*) 'do i = 10, 1, -3:  ', n, ' times'

      n = 0
      do 40 i = 1, 1
         n = n + 1
   40 continue
      write (*,*) 'do i = 1, 1:       ', n, ' times'

      stop
      end
