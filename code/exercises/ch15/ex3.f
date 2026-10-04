c Solution to exercise 15.3: a direct-access file. The squares of 1 to
c 10 are written in reverse order of the records; then three records
c are read back in an arbitrary order.
      program dirsq
      implicit none
      integer i, k, irec(3)
      data irec /10, 1, 5/

      open (21, file='squares.dat', access='direct', recl=4,
     &      status='unknown')
      do 10 i = 10, 1, -1
         write (21, rec=i) i*i
   10 continue

      do 20 i = 1, 3
         read (21, rec=irec(i)) k
         write (*,*) 'Record', irec(i), ':', k
   20 continue
      close (21, status='delete')

      stop
      end
