c Solution to exercise 14.4: physical constants in a named common
c block, initialized in a block data unit. The external statement
c makes sure that the linker includes the block data unit.
      program phys
      implicit none
      double precision c, h, e
      common /consts/ c, h, e
      external cinit

      write (*,*) 'Speed of light:     ', c, ' m/s'
      write (*,*) 'Planck constant:    ', h, ' J s'
      write (*,*) 'Elementary charge:  ', e, ' C'
      write (*,*) 'Photon energy at 500 nm:', h*c/500.0d-9, ' J'

      stop
      end

      block data cinit
      implicit none
      double precision c, h, e
      common /consts/ c, h, e
      data c /299792458.0d0/, h /6.62607015d-34/, e /1.602176634d-19/
      end
