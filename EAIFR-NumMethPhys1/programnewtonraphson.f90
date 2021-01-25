PROGRAM newtraph
  IMPLICIT NONE
  INTEGER :: i, N0=50
  REAL(8) :: p0, fp0, fpp0, p
  REAL(8) :: tol=1d-9
  REAL(8), EXTERNAL :: fun, funp

  PRINT*,'Give an initial value p close to a root'
  READ*, p0
  do i=1, N0
  fp0=fun(p0)
  fpp0=funp(p0)  
  p=p0-fp0/fpp0
  print*,i,p,fun(p)
  if (abs(p-p0)<tol) then
    PRINT*,'The procedure completed successfully'
    PRINT*,'The root is : ',p
    PRINT*,'    f(p) is : ',fun(p)
    stop
  endif
  p0=p
  enddo
  PRINT*,'Method failed after N0 iterations. N0 =',N0
  PRINT*,'The tolerance may be too high or the number of iterations too low ...!'
  PRINT*,'... or the initial p is far from the real solution'
  PRINT*,'The procedure was unsuccessful.'
END PROGRAM newtraph

REAL(8) FUNCTION fun(x)
  REAL(8) :: x
  fun=x**3+4*x**2-10
END FUNCTION fun

REAL(8) FUNCTIOn funp(x)
  REAL(8) :: x
  funp=3*x**2+8*x
END FUNCTION funp
