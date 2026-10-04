c Solution to exercise 6.6: rearrange a date from YYYY-MM-DD to DD/MM/YYYY
c using substrings and concatenation.
      program datefm
      implicit none
      character*10 iso, dmy

      write (*,*) 'Date (YYYY-MM-DD):'
      read (*,'(A)') iso

      dmy = iso(9:10) // '/' // iso(6:7) // '/' // iso(1:4)

      write (*,*) 'Day/month/year: ', dmy

      stop
      end
