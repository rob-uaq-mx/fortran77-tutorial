c From chapter11-subprograms-enhanced.tex, line 116
      real function mrain(m, t)
      implicit none
      integer m
      real t

      mrain = 0.1*t*(m**2 - 13*m + 30)
      if (mrain .LT. 0.0) mrain = 0.0

      return
      end
