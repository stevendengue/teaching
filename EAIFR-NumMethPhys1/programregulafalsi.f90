PROGRAM regfal
  IMPLICIT NONE
  INTEGER :: i, N0=50
  REAL(8) :: p0, p1, q0, q1, p, q
  REAL(8) :: tol=1d-9
  REAL(8), EXTERNAL :: fun, funp

  PRINT*,'Give initial values p0 and p1 that bracket a root'
  READ*, p0, p1
  q0=fun(p0); q1=fun(p1)
  do i=2, N0
  p=p1-q1*(p1-p0)/(q1-q0)
  print*,i,p,fun(p)
  if (abs(p-p1)<tol) then
    PRINT*,'The procedure completed successfully'
    PRINT*,'The root is : ',p
    PRINT*,'    f(p) is : ',fun(p)
    stop
  endif
  q=fun(p)
  if (q*q0<0) then
  p0=p1; q0=q1
  endif
  p1=p; q1=fun(p)
  enddo
  PRINT*,'Method failed after N0 iterations. N0 =',N0
  PRINT*,'The tolerance may be too high or the number of iterations too low ...!'
  PRINT*,'... or the initial p0 and p1 are far from the real solution'
  PRINT*,'The procedure was unsuccessful.'
END PROGRAM regfal

REAL(8) FUNCTION fun(x)
  REAL(8) :: x
  fun=x**3+4*x**2-10
END FUNCTION fun

