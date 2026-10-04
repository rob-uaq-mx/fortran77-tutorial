c From chapter5-variables-enhanced2.tex, line 393
      program string_demo
      implicit none
      character*10 first_name
      character*15 last_name
      character*30 full_name
      
c This program demonstrates character variables
      
      first_name = 'John'
      last_name = 'Smith'
      
c Concatenate strings
      full_name = first_name // ' ' // last_name
      
      write (*,*) 'First name: [', first_name, ']'
      write (*,*) 'Last name: [', last_name, ']'
      write (*,*) 'Full name: [', full_name, ']'
      
c Character strings are fixed length and padded with spaces
      write (*,*) 'Length of first_name:', len(first_name)
      write (*,*) 'Length of full_name:', len(full_name)
      
      stop
      end
