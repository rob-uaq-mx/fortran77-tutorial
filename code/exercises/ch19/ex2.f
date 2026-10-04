c Solution to exercise 19.2: the sum of all the elements of a large
c matrix, with the first index in the inner loop (in the order of the
c memory) and in the outer loop. CPU_TIME is a Fortran 95 intrinsic,
c available in all current compilers.
      program order
      implicit none
      integer n
      parameter (n = 2000)
      double precision A(n,n), s1, s2
      real t0, t1, t2
      integer i, j

      do 20 j = 1, n
         do 10 i = 1, n
            A(i,j) = 1.0d0
   10    continue
   20 continue

      call cpu_time(t0)
c Good: the inner loop runs over the first index
      s1 = 0.0d0
      do 40 j = 1, n
         do 30 i = 1, n
            s1 = s1 + A(i,j)
   30    continue
   40 continue
      call cpu_time(t1)
c Bad: the inner loop runs over the second index
      s2 = 0.0d0
      do 60 i = 1, n
         do 50 j = 1, n
            s2 = s2 + A(i,j)
   50    continue
   60 continue
      call cpu_time(t2)

      write (*,*) 'Sums:', s1, s2
      write (*,*) 'Inner loop over i (memory order):', t1 - t0, ' s'
      write (*,*) 'Inner loop over j:               ', t2 - t1, ' s'

      stop
      end
