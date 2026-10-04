c From chapter15-files-enhanced.tex, line 109
      program iostat_example
      implicit none
      integer unit, ios
      character*20 filename
      
      unit = 15
      filename = 'nonexistent.dat'
      
c Try to open a file that may not exist
      open (unit, file=filename, status='old', iostat=ios)
      
      if (ios .eq. 0) then
         write (*,*) 'File opened successfully'
         close (unit)
      else
         write (*,*) 'Error opening file: ', filename
         write (*,*) 'Error code: ', ios
      endif
      
      stop
      end
