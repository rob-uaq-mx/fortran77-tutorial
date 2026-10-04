c Solution to exercise 18.4: the product C = A*B of a 2x3 and a 3x2
c matrix, stored in 5x5 arrays, computed entry by entry with SDOT and
c with one call of the BLAS 3 routine SGEMM. Needs BLAS.
      program prodab
      implicit none
      integer ld, m, p, n, i, j, k
      parameter (ld = 5, m = 2, p = 3, n = 2)
      real A(ld,ld), B(ld,ld), C1(ld,ld), C2(ld,ld), SDOT

      do 20 k = 1, p
         do 10 i = 1, m
            A(i,k) = real(i + k)
   10    continue
         do 15 j = 1, n
            B(k,j) = real(k*j)
   15    continue
   20 continue

c Entry (i,j): row i of A (increment ld) times column j of B
      do 40 j = 1, n
         do 30 i = 1, m
            C1(i,j) = SDOT(p, A(i,1), ld, B(1,j), 1)
   30    continue
   40 continue

c C2 := 1.0*A*B + 0.0*C2
      call SGEMM('N', 'N', m, n, p, 1.0, A, ld, B, ld, 0.0, C2, ld)

      write (*,*) 'With SDOT:'
      do 50 i = 1, m
         write (*,'(2F8.1)') (C1(i,j), j = 1, n)
   50 continue
      write (*,*) 'With SGEMM:'
      do 60 i = 1, m
         write (*,'(2F8.1)') (C2(i,j), j = 1, n)
   60 continue

      stop
      end
