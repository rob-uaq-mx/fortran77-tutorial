c Fragments from chapter6-expressions-enhanced.tex, section "Constants".
c --- added: program and write statements to show each constant ---
      program consts
      implicit none
      write(*,*) 'Integer:          ', 1, 0, -100, 32767, +15
      write(*,*) 'Real:             ', 1.0, -0.25, 2.0E6, 3.333E-1
      write(*,*) 'Double precision: ', 2.0D-1, 1D99
      write(*,*) 'Complex:          ', (2, -3), (1., 9.9E-1)
      write(*,*) 'Logical:          ', .TRUE., .FALSE.
      write(*,*) 'Character:        ', 'ABC', ' ', 'It''s a nice day'
      end
