c Fragments from chapter13-common-enhanced.tex, section "Arrays in
c common blocks": nmax must be the same in all program units.
c --- added: the executable statements of the program and of sub1 ---
      program main
      implicit none
      integer nmax
      parameter (nmax=20)
      integer n
      real A(nmax, nmax)
      common /matrix/ A, n

      n = 3
      A(n,n) = 9.0
      call sub1
      end

      subroutine sub1
      implicit none
      integer nmax
      parameter (nmax=20)
      integer n
      real A(nmax, nmax)
      common /matrix/ A, n

      write(*,*) 'In sub1: n =', n, '  A(n,n) =', A(n,n)
      end
