c Solution to exercise 6.8: split an e-mail address into user and domain
c with INDEX and substrings. INDEX(email, '@') is the position of the @;
c INDEX(email, ' ') is the position of the first blank after the address
c (the address cannot contain blanks), so the domain ends just before it.
      program email
      implicit none
      character*40 addr
      integer at, blank

      write (*,*) 'E-mail address:'
      read (*,'(A)') addr

      at = INDEX(addr, '@')
      blank = INDEX(addr, ' ')

      write (*,*) 'User:   ', addr(1:at-1)
      write (*,*) 'Domain: ', addr(at+1:blank-1)

      stop
      end
