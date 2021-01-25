PROGRAM array_prog3
  IMPLICIT NONE
  REAL, DIMENSION(5) :: v1
  REAL, DIMENSION(3) :: v2
  INTEGER :: i
  v1 = (/ 1.1, 1.2, 1.3, 1.4, 1.5 /)

  v2 = v1(2:4)

  PRINT*, 'v1 = ', v1
  PRINT*, 'v2 = ', v2
END PROGRAM array_prog3
