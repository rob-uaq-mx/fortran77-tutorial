c From chapter13-common-enhanced.tex, line 88
      program coeffs
      implicit none
      real alpha, beta
      common /coeff/ alpha, beta

      alpha = 1.0
      beta = 2.0
      call sub1
      call sub3
      call sub4

      stop
      end

      subroutine sub1
      implicit none
      real alpha, beta
      common /coeff/ alpha, beta

      write(*,*) 'sub1: alpha =', alpha, '  beta =', beta
      return
      end

      subroutine sub3
      implicit none
      real a, b
      common /coeff/ a, b

      write(*,*) 'sub3: a     =', a, '  b    =', b
      return
      end

      subroutine sub4
      implicit none
      real alpha, beta
      common /coeff/ beta, alpha

      write(*,*) 'sub4: alpha =', alpha, '  beta =', beta
      return
      end
