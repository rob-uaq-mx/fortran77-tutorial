c Examples from chapter6-expressions-enhanced.tex, section "Expressions"
c (precedence, unary minus, integer division).
c --- added: program, declarations and output ---
      program preced
      implicit none
      real x, y
      x = 1.0
      y = 3.0
      write(*,*) 'x + 2 * y =', x + 2 * y, '  means x + (2*y)'
      write(*,*) '2**3**2   =', 2**3**2, '  means 2**(3**2)'
      write(*,*) '-x+y      =', -x+y
      write(*,*) '-2**2     =', -2**2, '  means -(2**2)'
      write(*,*) '(-2)**2   =', (-2)**2
      write(*,*) '3/2       =', 3/2
      write(*,*) '3./2.     =', 3./2.
      end
