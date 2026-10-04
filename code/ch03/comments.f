c From chapter3-basics-enhanced.tex, line 128
      program comments
c Traditional Fortran 77 comment with 'c' in column 1
* Alternate Fortran 77 comment with '*' in column 1
      
      write (*,*) 'This program demonstrates comment styles'
c     write (*,*) 'This line is commented out'
* The next line shows inline comments (non-standard but commonly supported)
      write (*,*) 'Hello' ! This is an inline comment
      
      stop
      end
