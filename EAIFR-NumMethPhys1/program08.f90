FUNCTION mynorm(xv,yv,zv)
  REAL(8), INTENT(IN) :: xv, yv, zv
  REAL(8) :: a, mynorm
  a = xv**2 + yv**2 + zv**2
  mynorm = sqrt(a)
END FUNCTION mynorm

PROGRAM norm1
  IMPLICIT NONE
  REAL(8) :: a, x, y, z
  REAL(8), EXTERNAL :: mynorm
  x = 3.1
  y = 4.2
  z = -5.3
  a = mynorm(x,y,z)
  PRINT*, a
END PROGRAM
