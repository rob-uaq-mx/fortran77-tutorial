c From chapter11-subprograms-enhanced.tex, line 282
      program calls
      implicit none

      call counter
      call counter
      call counter

      stop
      end

      subroutine counter
      implicit none
      integer count
      save count
      data count /0/

      count = count + 1
      write(*,*) 'This subroutine has been called', count, 'times.'

      return
      end
