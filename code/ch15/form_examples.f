c From chapter15-files-enhanced.tex, line 283
      program form_examples
      implicit none
      integer unit, i
      real numbers(3)
      
      numbers(1) = 3.14159
      numbers(2) = 2.71828
      numbers(3) = 1.41421
      
c Write formatted file (human readable)
      unit = 30
      open (unit, file='formatted.txt', form='formatted')
      write (unit,100) (numbers(i), i=1,3)
  100 format (3f10.5)
      close (unit)
      
c Write unformatted file (binary, more efficient)
      unit = 31
      open (unit, file='unformatted.dat', form='unformatted')
      write (unit) (numbers(i), i=1,3)
      close (unit)
      
c Read back unformatted file
      open (unit, file='unformatted.dat', form='unformatted')
      read (unit) (numbers(i), i=1,3)
      close (unit)
      
      write (*,*) 'Values from unformatted file:'
      write (*,*) (numbers(i), i=1,3)
      
      stop
      end
