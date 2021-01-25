MODULE norm_mod
  IMPLICIT NONE
CONTAINS
  REAL(8) FUNCTION mynorm(xv, yv, zv) RESULT(res)
    REAL(8), INTENT(IN) :: xv, yv, zv
    REAL(8) :: a
    a = xv**2 + yv**2 + zv**2
    res = SQRT(a)
  END FUNCTION mynorm
END MODULE norm_mod
