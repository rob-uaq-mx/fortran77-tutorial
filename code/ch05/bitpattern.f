c From chapter5-variables-enhanced2.tex, line 352
      program bitpattern
      implicit none
      real x
      integer ix
      equivalence (x, ix)

      write(*,*) 'Enter a real number:'
      read(*,*) x
      write(*,*) 'Value as real:', x
      write(*,*) 'Binary pattern as integer:', ix

      stop
      end
