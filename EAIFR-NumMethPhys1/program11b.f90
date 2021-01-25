PROGRAM norm3
  USE norm_mod
  IMPLICIT NONE
  REAL(8) :: a, x, y, z
  PRINT*, 'Enter three coordinates.'
  READ*, x, y, z
  a = mynorm(x,y,z)
  PRINT*, a
END PROGRAM norm3
