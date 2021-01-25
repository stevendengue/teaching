PROGRAM array_prog5
  IMPLICIT NONE
  INTEGER :: v1(3), v2(3), v3(3), v4(3)

  v1 = (/1, 2, 3/)
  v2 = (/4, 5, 6/)

  v3 = v1 + v2
  PRINT*, v3

  v4 = v1 * v2
  PRINT*, v4

  END PROGRAM array_prog5
