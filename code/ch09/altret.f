c From chapter9-loops-enhanced.tex, line 335
      program altret
      implicit none
      integer k

      do 400 k = 1, 3
         call check(k, *100, *200)
         write(*,*) k, ': normal return'
         goto 300
  100    write(*,*) k, ': error'
         goto 300
  200    write(*,*) k, ': end of data'
  300    continue
  400 continue

      stop
      end

      subroutine check(code, *, *)
      implicit none
      integer code

      if (code .eq. 2) return 1
      if (code .eq. 3) return 2
      return
      end
