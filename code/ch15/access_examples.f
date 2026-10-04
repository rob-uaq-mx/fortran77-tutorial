c From chapter15-files-enhanced.tex, line 217
      program access_examples
      implicit none
      integer unit, i
      real data(5)
      
c Sequential access (default)
      unit = 20
      open (unit, file='sequential.dat', access='sequential')
      
      do 10 i = 1, 5
         data(i) = real(i) * 1.5
         write (unit,*) data(i)
   10 continue
      close (unit)
      
c Read back sequentially
      open (unit, file='sequential.dat', access='sequential')
      do 20 i = 1, 5
         read (unit,*) data(i)
         write (*,*) 'Read value:', data(i)
   20 continue
      close (unit)
      
      stop
      end
