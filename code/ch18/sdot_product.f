c Fragments from chapter18.1-blas.tex, section "Examples": the (i,j)
c entry of A*B as cij = SDOT(p, A(i,1), lda, B(1,j), 1). Needs BLAS.
c --- added: program, dimensions, data, and a check with a loop ---
      program sdotex
      implicit none
      integer lda, ldb, m, p, n, i, j, k
      parameter (lda=5, ldb=5, m=2, p=3, n=2)
      real A(lda,lda), B(ldb,ldb), cij, cref, SDOT

c A is m by p and B is p by n, stored in larger arrays
      do 20 k = 1, p
         do 10 i = 1, m
            A(i,k) = real(i + k)
   10    continue
         do 15 j = 1, n
            B(k,j) = real(k*j)
   15    continue
   20 continue

      i = 2
      j = 2
      cij = SDOT(p, A(i,1), lda, B(1,j), 1)

      cref = 0.0
      do 30 k = 1, p
         cref = cref + A(i,k)*B(k,j)
   30 continue
      write(*,*) '(A*B)(2,2) with SDOT:   ', cij
      write(*,*) '(A*B)(2,2) with a loop: ', cref
      end
