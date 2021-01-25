PROGRAM array_prog6
  IMPLICIT NONE
  INTEGER, DIMENSION(5) :: v1 = (/-2,-1,0,1,2/)
  INTEGER :: v2(5)
  v2 = ABS(v1)
  WHERE (v1<0) v1 = -v1
  PRINT*, v1
  PRINT*, v2
END PROGRAM array_prog6
