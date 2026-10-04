c Exercise 16.1: the program of the exercise, with the input of ex1.in.
c Each read starts on a new line: a, b = 1, 2 (3 is lost); c, d = 4, 5;
c e = 6.
      program lines
      implicit none
      integer a, b, c, d, e

      read (*,*) a, b
      read (*,*) c, d
      read (*,*) e
      write (*,*) a, b, c, d, e

      stop
      end
