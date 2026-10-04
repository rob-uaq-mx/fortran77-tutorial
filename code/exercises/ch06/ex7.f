c Solution to exercise 6.7: concatenation of fixed-length strings, and how
c to avoid the trailing blanks with a substring.
      program concat
      implicit none
      character*6 a, b
      character*12 c, d

      a = 'Hi'
      b = 'there'
      c = a // b
      d = a(1:2) // ' ' // b(1:5)

      write (*,*) '[', c, ']'
      write (*,*) '[', d, ']'
      write (*,*) 'len(c) =', len(c), '   len(a // b) =', len(a // b)

      stop
      end
