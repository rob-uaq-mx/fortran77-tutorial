c From chapter3-basics-enhanced.tex, line 186
      program rectangle
      real length, width, area, perimeter
      
c This program computes the area and perimeter of a rectangle
      
      write (*,*) 'Enter rectangle length:'
      read (*,*) length
      write (*,*) 'Enter rectangle width:'
      read (*,*) width
      
      area = length * width
      perimeter = 2.0 * (length + width)
      
      write (*,*) 'Rectangle dimensions: ', length, ' x ', width
      write (*,*) 'Area: ', area
      write (*,*) 'Perimeter: ', perimeter
      
      stop
      end
