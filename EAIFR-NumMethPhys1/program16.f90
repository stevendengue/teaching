PROGRAM array_prog4
  IMPLICIT NONE
  INTEGER :: v1(3)
  REAL :: v2(4), v3(10)
  
  v1 = (/1, 2, 3/)
  v2 = (/ 0.0, 0.1, 0.2, 0.3 /)

  v1 = v1**3
  PRINT*, v1

  v2 = SIN(v2)
  PRINT*, v2
END PROGRAM array_prog4
