c From chapter15-files-enhanced.tex, line 407
      program file_exists
      implicit none
      character*20 filename
      logical exists
      integer unit
      
      filename = 'test.dat'
      unit = 60
      
c Check if file exists
      inquire (file=filename, exist=exists)
      
      if (exists) then
         write (*,*) 'File ', filename, ' exists'
         open (unit, file=filename, status='old')
         write (*,*) 'File opened for reading'
      else
         write (*,*) 'File ', filename, ' does not exist'
         write (*,*) 'Creating new file...'
         open (unit, file=filename, status='new')
         write (unit,*) 'This is a new file'
         write (*,*) 'File created and written'
      endif
      
      close (unit)
      
      stop
      end
