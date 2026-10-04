c From chapter15-files-enhanced.tex, line 322
      program end_example
      implicit none
      integer unit, count
      real value
      
      unit = 40
      count = 0
      
c First, create a data file
      open (unit, file='data.txt')
      write (unit,*) 1.0
      write (unit,*) 2.5
      write (unit,*) 3.7
      write (unit,*) 4.2
      close (unit)
      
c Now read until end of file
      open (unit, file='data.txt', status='old')
      
   10 read (unit, *, end=20) value
      count = count + 1
      write (*,*) 'Value', count, ':', value
      goto 10
      
   20 write (*,*) 'End of file reached. Total values:', count
      close (unit)
      
      stop
      end
