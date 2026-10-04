c Fragments from chapter14-data.tex, section "The data statement".
c --- added: program, declarations and output ---
      program datast
      implicit none
      integer m, n, m2, n2, v(5)
      real x, y, x2, y2, A(10,20), B(2,2)
      data m/10/, n/20/, x/2.5/, y/2.5/
      data m2,n2/10,20/, x2,y2/2*2.5/
      data A/ 200 * 0.0/
      data v/10,20,30,40,50/, B/1.0,-3.7,4.3,0.0/
      write(*,*) m, n, x, y
      write(*,*) m2, n2, x2, y2
      write(*,*) 'A(10,20) =', A(10,20)
      write(*,*) 'v =', v
      write(*,*) 'B =', B
      end
