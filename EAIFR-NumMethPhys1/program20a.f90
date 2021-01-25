MODULE norm_mod2
  IMPLICIT NONE
CONTAINS
  REAL FUNCTION mynorm2(vec_arg) RESULT(res)
    REAL, DIMENSION(:), INTENT(IN) :: vec_arg
    REAL :: a = 0.0
    INTEGER :: n, nc
    nc = SIZE(vec_arg, 1)
    DO n = 1, nc
       a = a + vec_arg(n)**2
    ENDDO
    res = SQRT(a)
  END FUNCTION mynorm2
END MODULE norm_mod2
