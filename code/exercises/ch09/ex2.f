c Solution to exercise 9.2: greatest common divisor with Euclid's
c algorithm, written as a while-loop with if and goto.
      program euclid
      implicit none
      integer a, b, r, a0, b0

      write (*,*) 'Enter two positive integers:'
      read (*,*) a, b
      a0 = a
      b0 = b

c While b is not zero: replace (a, b) by (b, a mod b)
   10 if (b .NE. 0) then
         r = mod(a, b)
         a = b
         b = r
         goto 10
      endif

      write (*,*) 'gcd(', a0, ',', b0, ') =', a

      stop
      end
