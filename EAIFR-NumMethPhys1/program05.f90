  PROGRAM fibprog1
     IMPLICIT NONE
     INTEGER(8) :: x, y, z
     REAL :: phi_est
     INTEGER :: n=3
     z=1
     y=1
   2 x=y+z
     phi_est=x/(1.0*y)
     PRINT*, n, x, phi_est, abs(phi_est-(sqrt(5.0)+1)/2)
     z=y
     y=x
     n=n+1
     IF (n<50) GO TO 2
   END PROGRAM fibprog1
