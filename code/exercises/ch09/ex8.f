c Solution to exercise 9.8: the program weekdy of this chapter, rewritten
c with a block if instead of the computed goto.
      program weekd2
      implicit none
      integer day

      do 90 day = 0, 8
         write(*,*) 'day =', day
         if (day .EQ. 1) then
            write(*,*) '   Sunday'
         elseif (day .EQ. 2) then
            write(*,*) '   Monday'
         elseif (day .EQ. 3) then
            write(*,*) '   Tuesday'
         elseif (day .EQ. 4) then
            write(*,*) '   Wednesday'
         elseif (day .EQ. 5) then
            write(*,*) '   Thursday'
         elseif (day .EQ. 6) then
            write(*,*) '   Friday'
         elseif (day .EQ. 7) then
            write(*,*) '   Saturday'
         else
            write(*,*) '   (out of range)'
         endif
   90 continue

      stop
      end
