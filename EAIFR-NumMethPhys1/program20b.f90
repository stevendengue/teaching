PROGRAM norm5
  USE norm_mod2
  IMPLICIT NONE
  REAL, DIMENSION(4) ::  my_vec
  REAL :: r
  my_vec = (/0.1, 0.2, 0.3, 0.4/)
  PRINT*, my_vec
  r = mynorm2(my_vec)
  PRINT*, r
END PROGRAM norm5
