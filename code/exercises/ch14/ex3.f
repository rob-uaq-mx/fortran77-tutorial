c Solution to exercise 14.3: a data statement gives an initial value
c once, when the program starts; an assignment is executed at every
c call. count1 prints 1, 2, 3; count2 prints 1, 1, 1.
      program dvsa
      implicit none
      integer i

      do 10 i = 1, 3
         call count1
         call count2
   10 continue

      stop
      end

      subroutine count1
      implicit none
      integer n
      save n
      data n /0/

      n = n + 1
      write (*,*) 'count1:', n

      return
      end

      subroutine count2
      implicit none
      integer n

      n = 0
      n = n + 1
      write (*,*) 'count2:', n

      return
      end
