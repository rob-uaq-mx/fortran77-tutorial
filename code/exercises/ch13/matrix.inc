c The matrix A and its order n, shared through a common block
c (exercise 13.4). nmax must be the same in all program units, so it is
c defined here, only once.
      integer nmax
      parameter (nmax=20)
      integer n
      real A(nmax, nmax)
      common /matrix/ A, n
