c Fragment from chapter16-readwrite.tex, section "Examples"
c (list-directed input). The input in listread.in is the version
c with commas.
c --- added: program and output ---
      program lstrd
      implicit none
      integer m, n
      real x, y, z(10)

      read(*,*) m, n
      read(*,*) x, y
      read(*,*) z
      write(*,*) 'm, n =', m, n
      write(*,*) 'x, y =', x, y
      write(*,*) 'z =', z
      end
