c Solution to exercise 6.2: read "First Last" and print "Last, First",
c using only INDEX and substrings.
c   blank   = position of the blank between the two names
c   lastend = position of the last letter of the last name: the first
c             blank in the rest of the line, name(blank+1:), counted
c             from position blank, minus one
      program revnam
      implicit none
      character*40 name
      character*42 result
      integer blank, lastend

      write (*,*) 'Enter first and last name:'
      read (*,'(A)') name

      blank = INDEX(name, ' ')
      lastend = blank + INDEX(name(blank+1:), ' ') - 1

      result = name(blank+1:lastend) // ', ' // name(1:blank-1)
      write (*,'(A)') result

      stop
      end
