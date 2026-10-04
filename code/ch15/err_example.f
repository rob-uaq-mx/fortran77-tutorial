c From chapter15-files-enhanced.tex, line 137
      program err_example
      implicit none
      integer unit
      character*20 filename
      
      unit = 12
      filename = 'missing.dat'
      
c Try to open file, jump to error handler if it fails
      open (unit, file=filename, status='old', err=100)
      
      write (*,*) 'File opened successfully'
      close (unit)
      goto 200
      
c Error handler
  100 write (*,*) 'Cannot open file: ', filename
      write (*,*) 'Please check if file exists'
      
  200 stop
      end
