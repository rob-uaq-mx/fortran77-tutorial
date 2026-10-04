c Demonstrates the error described in chapter11-subprograms-enhanced.tex
c ("Why the function must be declared"): the main program of annual.f
c without implicit none and without declaring mrain. Since the name
c starts with m, mrain is taken to be an INTEGER function, while it
c really returns a REAL. Compiled separately from mrain.f (see
c annual_undeclared.with), nothing detects the mismatch and the
c results are nonsense.
      program annual
      real t, r, sum
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
