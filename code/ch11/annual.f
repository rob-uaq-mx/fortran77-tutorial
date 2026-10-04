c From chapter11-subprograms-enhanced.tex, line 86
      program annual
      implicit none
      real mrain, t, r, sum
      integer m

      read (*,*) t
      sum = 0.0
      do 10 m = 1, 12
         r = mrain(m, t)
         write (*,*) 'Month', m, ':', r
         sum = sum + r
   10 continue
      write (*,*) 'Annual rainfall is ', sum, ' inches'

      stop
      end
