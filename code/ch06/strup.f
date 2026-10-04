c From chapter6-expressions-enhanced.tex, line 376
      program strup
      implicit none
      character*80 text
      character*26 lower, upper
      integer i, k, n
      parameter (lower = 'abcdefghijklmnopqrstuvwxyz',
     +           upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')

c Read input text
      write(*,*) 'Enter a string:'
      read(*,'(A)') text

c Find the actual length n of the text (ignoring trailing blanks)
      n = 0
      do 10 i = 80, 1, -1
         if (text(i:i) .NE. ' ') then
            n = i
            goto 20
         endif
   10 continue
   20 continue

c Convert lowercase to uppercase: look up each character in
c the string lower; if found, take the letter at the same
c position in upper.
      do 30 i = 1, n
         k = INDEX(lower, text(i:i))
         if (k .GT. 0) text(i:i) = upper(k:k)
   30 continue

c Print the result
      write(*,*) 'Uppercase version:'
      if (n .GT. 0) write(*,'(A)') text(1:n)

      stop
      end
