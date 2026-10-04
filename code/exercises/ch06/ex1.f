c Solution to exercise 6.1: convert seconds to hours, minutes and
c seconds using integer division.
      program hms
      implicit none
      integer total, h, m, s

      write (*,*) 'Number of seconds:'
      read (*,*) total

c Integer division discards the remainder; the remainder itself is
c total - (total/n)*n (the intrinsic function mod(total, n) gives the
c same result).
      h = total / 3600
      m = (total - h*3600) / 60
      s = total - h*3600 - m*60

      write (*,*) total, ' seconds =', h, ' h', m, ' min', s, ' s'

      stop
      end
