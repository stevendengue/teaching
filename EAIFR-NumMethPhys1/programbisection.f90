PROGRAM bisect
  IMPLICIT NONE
  INTEGER :: i, N0=50
  REAL(8) :: a, b, p, fa, fp, pp
  REAL(8) :: tol=1d-9
  REAL(8), EXTERNAL :: fun

  PRINT*,'Give the values of a and b that bracket a root'
  READ*, a, b
  if (fun(a)*fun(b)>0) then
    PRINT*,'a and b are not a bracket!'
    stop
  endif
  fa=fun(a)
  pp=0_8
  do i=0, N0
  p=a+(b-a)/2
  print*,i,p,fun(p),abs(p-pp)
  fp=fun(p)
  if ((abs(fp)<1d-12).or.((b-a)/2<tol)) then
     !if (abs(fp)<tol*100) then
       PRINT*,'The procedure completed successfully'
       PRINT*,'The root is : ',p
       PRINT*,'    f(p) is : ',fp
       stop
     !else
       !PRINT*,'Method failed: a and b are not brackets of a root.'
       !PRINT*,'The procedure was unsuccessful.'
       !stop
     !endif
  endif
  if (fa*fp>0) then
     a=p
     fa=fp
  else
     b=p
  endif
  pp=p
  enddo
  PRINT*,'Method failed after N0 iterations. N0 =',N0
  PRINT*,'The tolerance may be too high or the number of iterations too low!'
  PRINT*,'The procedure was unsuccessful.'
END PROGRAM bisect

REAL(8) FUNCTION fun(x)
  REAL(8) :: x
  fun=x**3+4*x**2-10
END FUNCTION fun
