c Solution to exercise 11.2: a simple random number generator, which
c keeps its state between calls with SAVE.
      program rtest
      implicit none
      real rnd, x, sum
      integer i, n
      parameter (n = 10000)

      write (*,*) 'The first five numbers:'
      do 10 i = 1, 5
         write (*,*) '  ', rnd()
   10 continue

      sum = 0.0
      do 20 i = 1, n
         x = rnd()
         sum = sum + x
   20 continue
      write (*,*) 'Average of', n, ' numbers:', sum / real(n)

      stop
      end

c rnd returns a pseudo-random number in [0, 1). It uses the linear
c congruential method:  seed = (25173*seed + 13849) mod 65536.
c All intermediate values stay below 2**31, so 32-bit integers suffice.
      real function rnd()
      implicit none
      integer seed
      save seed
      data seed /12345/

      seed = mod(25173*seed + 13849, 65536)
      rnd = real(seed) / 65536.0

      return
      end
