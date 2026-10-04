c From chapter14-data.tex, line 70
      program bdata
      implicit none
      integer nmax
      parameter (nmax=20)
      real v(nmax), alpha, beta
      common /vector/v,alpha,beta

      write(*,*) 'v(1) =', v(1), '  v(20) =', v(20)
      write(*,*) 'alpha =', alpha, '  beta =', beta

      stop
      end

      block data vecini
      implicit none
      integer nmax
      parameter (nmax=20)
      real v(nmax), alpha, beta
      common /vector/v,alpha,beta
      data v/20*100.0/, alpha/3.14/, beta/2.71/
      end
