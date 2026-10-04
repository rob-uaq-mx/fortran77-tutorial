c Solution to exercise 11.7: a subroutine sort3 that sorts three
c integers in increasing order, using the subroutine iswap of the
c chapter (compiled together with ../../ch11/iswap.f, see ex7.with).
      program tsort3
      implicit none
      integer a, b, c

   10 read (*,*,end=99) a, b, c
      call sort3(a, b, c)
      write (*,*) a, b, c
      goto 10

   99 stop
      end

      subroutine sort3(a, b, c)
      implicit none
      integer a, b, c

      if (a .GT. b) call iswap(a, b)
      if (b .GT. c) call iswap(b, c)
c Now c is the largest; one more comparison puts a and b in order
      if (a .GT. b) call iswap(a, b)

      return
      end
