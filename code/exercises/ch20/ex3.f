c Solution to exercise 20.3: the sum must start at zero.
      program sumok
      implicit none
      integer i
      real s

      s = 0.0
      do 10 i = 1, 10
         s = s + real(i)
   10 continue
      write (*,*) 'Sum =', s
      end
