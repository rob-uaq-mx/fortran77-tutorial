c Solution to exercise 11.1: a logical function isprim(n), used to
c print the prime numbers below 100.
      program primes
      implicit none
      logical isprim
      integer n, count

      count = 0
      do 10 n = 1, 99
         if (isprim(n)) then
            write (*,'(I4)') n
            count = count + 1
         endif
   10 continue
      write (*,*) count, ' primes below 100'

      stop
      end

      logical function isprim(n)
      implicit none
      integer n, k

      isprim = .FALSE.
      if (n .LT. 2) return
c It is enough to try divisors k with k*k <= n
      k = 2
   10 if (k*k .LE. n) then
         if (mod(n, k) .EQ. 0) return
         k = k + 1
         goto 10
      endif
      isprim = .TRUE.

      return
      end
