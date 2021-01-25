PROGRAM array_prog1
  IMPLICIT NONE
  REAL(8), DIMENSION(5) :: v1
  INTEGER :: i
  v1 = (/1.1d0, 1.2d0, 1.3d0, 1.4d0, 1.5d0/)
  PRINT*, v1

  DO i = 1, 5
     v1(i) = 1.0_8 + i*0.1_8
  ENDDO

  PRINT*, v1
END PROGRAM array_prog1
