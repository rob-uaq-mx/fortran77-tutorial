c Fragments from chapter17-format-enhanced.tex that are not complete
c programs: sections "Syntax", "Format strings in read/write
c statements" and "Implicit loops and repeat counts".
c --- added: program, declarations and data ---
      program format
      implicit none
      integer i, j, a(5,10)
      real x, xv(50)

c Syntax: I4 and F8.3
      i = 42
      x = 3.14159
      write(*, 900) i, x
  900 format (I4,F8.3)

c Three equivalent ways to give the format
      x = 1.5
      write (*,'(A, F8.3)') 'The answer is x = ', x
      write (*,990) 'The answer is x = ', x
  990 format (A, F8.3)
      write (*,999) x
  999 format ('The answer is x = ', F8.3)

c Repeat counts: both formats give the same output
      write(*,950) 1, 2, 3, 4
  950 format (2X, I3, 2X, I3, 2X, I3, 2X, I3)
      write(*,951) 1, 2, 3, 4
  951 format (4(2X, I3))

c Implicit loop over the columns, explicit loop over the rows
      do 8 j = 1, 10
         do 7 i = 1, 5
            a(i,j) = 10*i + j
    7    continue
    8 continue
      do 10 i = 1, 5
         write(*,1000) (a(i,j), j=1,10)
   10 continue
 1000 format (10I6)

c Format reversion: 50 values, ten per line
      do 20 i = 1, 50
         xv(i) = 0.5*real(i)
   20 continue
      write(*,1010) (xv(i), i=1,50)
 1010 format (10F7.2)
      end
