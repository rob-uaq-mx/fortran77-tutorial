c The alternative syntax of chapter16-readwrite.tex, section "Other
c versions": read * and print *.
c --- added: program, declarations and input ---
      program prtstr
      implicit none
      integer n
      real x
      read *, n, x
      print *, 'n =', n, '  x =', x
      end
