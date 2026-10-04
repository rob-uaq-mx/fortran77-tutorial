c Solution to exercise 13.3: the subroutine tick counts its calls in a
c common block, so the main program can read the count without passing
c it as an argument.
      program ticks
      implicit none
      integer ncalls
      common /stats/ ncalls
      integer i

      ncalls = 0
      do 10 i = 1, 5
         call tick
   10 continue
      write (*,*) 'tick was called', ncalls, ' times'

      stop
      end

      subroutine tick
      implicit none
      integer ncalls
      common /stats/ ncalls

      ncalls = ncalls + 1

      return
      end
