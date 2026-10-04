c Exercise 19.1: a program written in a bad style. It reads numbers
c until the end of the input, ignores those that are not positive, and
c prints the numbers larger than the average, and the average.
      program ugly
      dimension x(100)
      n=0
      s=0.
    1 read(*,*,end=2) v
      if(v)1,1,3
    3 n=n+1
      x(n)=v
      s=s+v
      goto 1
    2 a=s/n
      do 5 i=1,n
    5 if(x(i).gt.a) write(*,*) x(i)
      write(*,*) a
      end
