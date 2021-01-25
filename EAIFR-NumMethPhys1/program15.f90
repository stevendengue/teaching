PROGRAM fibprog3
  IMPLICIT NONE
  INTEGER(8), DIMENSION(50) :: x
  INTEGER :: n
  x(1) = 1
  x(2) = 1
  DO n = 3, 50
    x(n) = x(n-1) + x(n-2)
    PRINT*, n, x(n)
  ENDDO
  !PRINT*,x
END PROGRAM fibprog3
