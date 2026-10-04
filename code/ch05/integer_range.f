c From chapter5-variables-enhanced2.tex, line 76
      program integer_range
      integer small, big, result
      
c This program demonstrates integer ranges and overflow
      
      small = 10
      big = 2000000000  ! Close to maximum 32-bit integer
      
      write (*,*) 'small =', small
      write (*,*) 'big =', big
      
      result = big + big  ! This will likely overflow
      
      write (*,*) 'big + big =', result
      write (*,*) 'This result may be incorrect due to integer overflow'

      stop
      end
