c From chapter17-format-enhanced.tex, line 388
      program simulation
      implicit none
      real dt, tend, x0, v0
      integer nsteps, output_freq
      character*30 title, output_file
      logical debug
      
c Declare namelist groups
      NAMELIST /params/ dt, tend, nsteps, output_freq, debug
      NAMELIST /initial/ x0, v0
      NAMELIST /output/ title, output_file
      
c Set defaults
      dt = 0.01
      tend = 10.0
      nsteps = 1000
      output_freq = 10
      debug = .FALSE.
      
      x0 = 0.0
      v0 = 0.0
      
      title = 'Simulation Results'
      output_file = 'output.dat'
      
c Read parameters from standard input
      write(*,*) 'Enter simulation parameters:'
      read(*, NML=params, END=100)
      read(*, NML=initial, END=100)
      read(*, NML=output, END=100)
      
c Echo parameters back to the user
      write(*,*) 'Running simulation with parameters:'
      write(*, NML=params)
      write(*, NML=initial)
      write(*, NML=output)
      
c Run simulation (not shown here)
      
  100 continue
      stop
      end
