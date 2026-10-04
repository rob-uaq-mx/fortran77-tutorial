c Fragments from chapter10-arrays.tex: arrays with arbitrary index
c ranges, and the dimension statement.
c --- added: program, assignments and output ---
      program dimens
      implicit none
      real b(0:19), weird(-162:237)
      integer i(10)
      logical aa(0:1)
      double precision x(100)
      real A, xx
      dimension xx(50)
      dimension A(10,20)
      b(0) = 1.0
      weird(-162) = 2.0
      weird(237) = 3.0
      i(10) = 4
      aa(0) = .true.
      x(100) = 5.0d0
      A(10,20) = 6.0
      xx(50) = 7.0
      write(*,*) b(0), weird(-162), weird(237), i(10), aa(0)
      write(*,*) x(100), A(10,20), xx(50)
      end
