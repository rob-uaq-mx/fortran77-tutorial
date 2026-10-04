c From chapter15-files-enhanced.tex, line 165
      program status_examples
      implicit none
      integer unit1, unit2, unit3
      character*40 line

c Example 1: Create a NEW file
      unit1 = 11
      open (unit1, file='newfile.txt', status='new')
      write (unit1,'(A)') 'This is a new file'
      close (unit1)

c Example 2: Open an OLD (existing) file, read back the line
c we wrote, and delete the file when closing it
      unit2 = 12
      open (unit2, file='newfile.txt', status='old')
      read (unit2,'(A)') line
      write (*,*) 'Read from newfile.txt: ', line
      close (unit2, status='delete')

c Example 3: Create a SCRATCH file (temporary)
      unit3 = 13
      open (unit3, status='scratch')
      write (unit3,*) 'This is temporary data'
      write (unit3,*) 'It will be deleted when closed'
      close (unit3)  ! File is automatically deleted
      
      write (*,*) 'All file operations completed'

      stop
      end
