c Demonstrates the case in chapter16-readwrite.tex where the first four
c values are given on one line (see eof_extra.in). The second read
c starts on a new line, so the third read finds no input for z and the
c program stops with "End of file".
      program eofex
      implicit none
      integer m, n
      real x, y, z(10)

      read(*,*) m, n
      read(*,*) x, y
      read(*,*) z
      write(*,*) 'm, n =', m, n
      write(*,*) 'x, y =', x, y

      stop
      end
