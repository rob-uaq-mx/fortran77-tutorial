c Solution to exercise 19.4: the subroutine mscale of Chapter 12 with a
c header in the style of LAPACK, and a small test program.
      program tmscal
      implicit none
      real A(3,2)
      integer i, j

      do 20 j = 1, 2
         do 10 i = 1, 3
            A(i,j) = 1.0
   10    continue
   20 continue
      call mscale(2, 2, 10.0, A, 3)
      do 30 i = 1, 3
         write (*,*) (A(i,j), j = 1, 2)
   30 continue

      stop
      end

      subroutine mscale(m, n, alpha, A, lda)
      implicit none
      integer m, n, lda
      real alpha, A(lda,*)
*
*  Purpose
*  =======
*
*  MSCALE multiplies the m-by-n matrix A by the scalar alpha:
*     A := alpha * A.
*  Only the first m elements of each column are changed, so the
*  array may be larger than the matrix (lda > m).
*
*  Arguments
*  =========
*
*  M       (input) INTEGER
*          The number of rows of the matrix A.  M >= 0.
*
*  N       (input) INTEGER
*          The number of columns of the matrix A.  N >= 0.
*
*  ALPHA   (input) REAL
*          The scalar factor.
*
*  A       (input/output) REAL array, dimension (LDA,N)
*          On entry, the m-by-n matrix A.
*          On exit, the matrix alpha*A.
*
*  LDA     (input) INTEGER
*          The leading dimension of the array A.  LDA >= max(1,M).
*
*  Local variables
      integer i, j

      do 20 j = 1, n
         do 10 i = 1, m
            A(i,j) = alpha * A(i,j)
   10    continue
   20 continue

      return
      end
