c From chapter15-files-enhanced.tex, line 442
      program append_example
      implicit none
      integer unit, i
      
      unit = 70
      
c Create initial file
      open (unit, file='log.txt', status='unknown')
      write (unit,*) 'Initial entry'
      close (unit)
      
c Append to existing file (reopen and position at end)
      open (unit, file='log.txt', status='old', position='append')
      
      do 10 i = 1, 3
         write (unit,*) 'Appended entry number', i
   10 continue
      
      close (unit)
      
      write (*,*) 'Data appended to log.txt'

      stop
      end
