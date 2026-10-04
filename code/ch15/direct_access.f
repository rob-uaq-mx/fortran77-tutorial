c From chapter15-files-enhanced.tex, line 249
      program direct_access
      implicit none
      integer unit, record_num
      real value
      
      unit = 25
      
c Create direct access file with fixed record length
      open (unit, file='direct.dat', access='direct', recl=20)
      
c Write records in any order
      write (unit, rec=3) 30.0
      write (unit, rec=1) 10.0
      write (unit, rec=5) 50.0
      write (unit, rec=2) 20.0
      write (unit, rec=4) 40.0
      
c Read records in any order
      do 10 record_num = 1, 5
         read (unit, rec=record_num) value
         write (*,*) 'Record', record_num, ':', value
   10 continue
      
      close (unit)
      
      stop
      end
