c From chapter15-files-enhanced.tex, line 358
      program complete_error_handling
      implicit none
      integer unit, ios, count
      real value, sum
      character*30 filename
      
      unit = 50
      filename = 'numbers.dat'
      count = 0
      sum = 0.0
      
c Open file with complete error checking
      open (unit, file=filename, status='old', iostat=ios, err=100)
      
      write (*,*) 'Reading from file: ', filename
      
c Read data with end-of-file detection
   10 read (unit, *, iostat=ios, end=30, err=200) value
      count = count + 1
      sum = sum + value
      write (*,*) 'Read value', count, ':', value
      goto 10
      
c Normal end of file
   30 write (*,*) 'Successfully read', count, 'values'
      write (*,*) 'Sum =', sum
      write (*,*) 'Average =', sum / real(count)
      close (unit)
      goto 999
      
c File open error
  100 write (*,*) 'Error: Cannot open file ', filename
      write (*,*) 'Error code:', ios
      goto 999
      
c Read error
  200 write (*,*) 'Error reading from file at record', count+1
      write (*,*) 'Error code:', ios
      close (unit)
      
  999 stop
      end
