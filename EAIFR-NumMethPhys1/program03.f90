PROGRAM simple_math
  IMPLICIT NONE
  REAL :: x, y, z
  INTEGER :: n

  n=2
  y=2.1
  z=-3.2

  x=y+z/4.0
  PRINT*, x

  x=(y+z)/4.0
  PRINT*, x

  x= y**n/z
  PRINT*, x

END PROGRAM simple_math
