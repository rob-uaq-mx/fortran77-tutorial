c From chapter17-format-enhanced.tex, line 160
      program dates
      implicit none
      character*8 text
      integer year, month, day, date

c Text to numbers: read from the character variable text
      text = '20230415'
      read (text, '(I4,I2,I2)') year, month, day
      write (*,*) 'Year:', year, '  Month:', month, '  Day:', day

c Numbers to text: write into the character variable text
      date = 20240101
      write (text, '(I8)') date
      write (*,*) 'As text: [', text, ']'

c Build a date with leading zeros
      year = 2025
      month = 7
      day = 4
      write (text, '(I4,I2.2,I2.2)') year, month, day
      write (*,*) 'Built:   [', text, ']'

      stop
      end
