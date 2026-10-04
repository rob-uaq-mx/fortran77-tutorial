c Fragments from chapter6-expressions-enhanced.tex, section
c "Character strings and string manipulation".
c --- added: program, one set of declarations and output; the brackets
c show the blanks that are part of each string ---
      program string
      implicit none
      character*10 name, name1, name2
      character*5 first, word1, word2
      character*7 last
      character*13 fullname
      character*20 text
      character*15 name15
      character ch
      logical result
      integer length, pos, code

c Assignment: padding and truncation
      name1 = 'John'
      name2 = 'John Smith'
      write(*,*) '[', name1, ']  [', name2, ']'
      name1 = 'Alexander Graham Bell'
      write(*,*) '[', name1, ']'

c Concatenation: note the two blanks, first has length 5
      first = 'John'
      last = 'Smith'
      fullname = first // ' ' // last
      write(*,*) '[', fullname, ']'
      fullname = first(1:4) // ' ' // last
      write(*,*) '[', fullname, ']'

c Comparison
      word1 = 'alpha'
      word2 = 'beta'
      result = word1 .LT. word2
      write(*,*) 'alpha .LT. beta:', result,
     +           '   LLT:', LLT(word1, word2)

c LEN
      name = 'John'
      length = LEN(name)
      write(*,*) 'LEN(name) =', length

c INDEX
      text = 'This is a test'
      pos = INDEX(text, 'is')
      write(*,*) 'INDEX(text,''is'')  =', pos
      pos = INDEX(text, 'xyz')
      write(*,*) 'INDEX(text,''xyz'') =', pos

c CHAR and ICHAR
      ch = CHAR(65)
      code = ICHAR('A')
      write(*,*) 'CHAR(65) = ', ch, '   ICHAR(''A'') =', code

c Substrings
      name = 'John Smith'
      first = name(1:4)
      write(*,*) '[', first, ']'
      text = 'abcdefghijklmnopqrst'
      write(*,*) text(:5)
      write(*,*) text(6:10)
      write(*,*) text(16:)

c Substring on the left side of an assignment
      name15 = 'John Doe'
      name15(6:10) = 'Smith'
      write(*,*) '[', name15, ']'
      end
