FUNCTION mynorm(xv,yv,zv)
  REAL(8), INTENT(IN) :: xv, yv, zv
  REAL(8) :: a, mynorm
  a = xv**2 + yv**2 + zv**2
  mynorm = sqrt(a)
END FUNCTION mynorm

