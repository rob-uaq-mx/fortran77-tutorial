c From chapter5-variables-enhanced2.tex, line 110
      program precision_demo
      real r_sum, r_val
      double precision d_sum, d_val
      integer i
      
c This program demonstrates precision differences
      
      r_val = 0.1
      d_val = 0.1D0
      
      r_sum = 0.0
      d_sum = 0.0D0
      
c Add 0.1 ten times
      do 10 i = 1, 10
         r_sum = r_sum + r_val
         d_sum = d_sum + d_val
10    continue
      
      write (*,*) 'Expected sum: 1.0'
      write (*,*) 'Sum using REAL:', r_sum
      write (*,*) 'Sum using DOUBLE PRECISION:', d_sum
      write (*,*) 'Difference from 1.0 (REAL):', r_sum - 1.0
      write (*,*) 'Difference from 1.0 (DOUBLE):', d_sum - 1.0D0

      stop
      end
