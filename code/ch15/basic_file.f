c From chapter15-files-enhanced.tex, line 59
      program basic_file
      implicit none
      integer unit

c Basic file operations
      unit = 10

c Open the file for writing
      open (unit, file='output.txt', status='unknown')

      write (unit,*) 'Hello, file!'
      write (unit,*) 'This is line 2'

c Close the file
      close (unit)

      write (*,*) 'File created successfully'

      stop
      end
