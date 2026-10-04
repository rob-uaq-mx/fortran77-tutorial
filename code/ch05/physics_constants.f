c From chapter5-variables-enhanced2.tex, line 195
      program physics_constants
      double precision pi, e, c, h, g
      parameter (pi = 3.14159265358979D0,
     +           e = 2.71828182845905D0,
     +           c = 299792458.0D0,      ! Speed of light (m/s)
     +           h = 6.62607015D-34,     ! Planck's constant (J·s)
     +           g = 9.80665D0)          ! Gravity (m/s^2)
      
c This program demonstrates using multiple parameters
c for scientific constants
      
      write (*,*) 'Mathematical constants:'
      write (*,*) '  pi =', pi
      write (*,*) '  e =', e
      write (*,*) 'Physical constants:'
      write (*,*) '  Speed of light =', c, 'm/s'
      write (*,*) '  Planck constant =', h, 'J·s'
      write (*,*) '  Gravity =', g, 'm/s^2'
      
c Cannot change a parameter value:
c     pi = 3.14   ! This would cause a compilation error
      
      stop
      end
