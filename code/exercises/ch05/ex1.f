c Solution to exercise 5.1: seconds in a number of days, and integer
c overflow.
      program secs
      implicit none
      integer spd
      parameter (spd = 86400)
      integer days, s, maxint, limit

      write (*,*) 'Number of days:'
      read (*,*) days
      s = days * spd
      write (*,*) days, ' days =', s, ' seconds'

c The product fits in a 32-bit integer only if days <= maxint/spd
      maxint = 2147483647
      limit = maxint / spd
      write (*,*) 'Largest number of days without overflow:', limit
      if (days .GT. limit) then
         write (*,*) 'Too many days: the result above is wrong!'
      endif

      stop
      end
