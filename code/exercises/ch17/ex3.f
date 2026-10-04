c Exercise 17.3: the writes of the exercise. The brackets show the
c exact extent of each field.
      program fpredi
      implicit none

      write (*,'(A,I5,A)')    '[', 12345678, ']'
      write (*,'(A,F6.2,A)')  '[', 3.14159, ']'
      write (*,'(A,E10.3,A)') '[', -0.000123, ']'
      write (*,'(A,I3.3,A)')  '[', 7, ']'
      write (*,'(A,A3,A)')    '[', 'Fortran', ']'
      write (*,'(A,A10,A)')   '[', 'Fortran', ']'
      write (*,'(A,L3,A)')    '[', .TRUE., ']'
      write (*,'(A,F4.1,A)')  '[', -9.96, ']'

      stop
      end
