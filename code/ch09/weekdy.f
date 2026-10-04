c From chapter9-loops-enhanced.tex, line 223
      program weekdy
      implicit none
      integer day

      do 90 day = 0, 8
         write(*,*) 'day =', day
         goto (10, 20, 30, 40, 50, 60, 70) day
         write(*,*) '   (out of range: no jump)'
         goto 80
   10    write(*,*) '   Sunday'
         goto 80
   20    write(*,*) '   Monday'
         goto 80
   30    write(*,*) '   Tuesday'
         goto 80
   40    write(*,*) '   Wednesday'
         goto 80
   50    write(*,*) '   Thursday'
         goto 80
   60    write(*,*) '   Friday'
         goto 80
   70    write(*,*) '   Saturday'
   80    continue
   90 continue

      stop
      end
