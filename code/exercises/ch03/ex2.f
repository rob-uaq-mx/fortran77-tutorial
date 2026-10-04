c Solution to exercise 3.2: sum and average of three numbers.
      program avg3
      real a, b, c, sum, avg

      write (*,*) 'Enter three numbers:'
      read (*,*) a, b, c

      sum = a + b + c
      avg = sum / 3.0

      write (*,*) 'Sum:     ', sum
      write (*,*) 'Average: ', avg

      stop
      end
