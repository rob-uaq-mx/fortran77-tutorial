c From chapter11-subprograms-enhanced.tex, line 318
      program total
      implicit none
      real runsum, s

      s = runsum(10.0)
      s = runsum(-2.5)
      s = runsum(4.0)
      write(*,*) 'Running sum =', s

      stop
      end

      real function runsum(x)
      implicit none
      real x, sum
      save sum
      data sum /0.0/

      sum = sum + x
      runsum = sum

      return
      end
