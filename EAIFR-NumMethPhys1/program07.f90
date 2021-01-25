 PROGRAM quad1
   IMPLICIT NONE
   REAL :: b, c, d, x1, x2
   PRINT*, 'We are solving the eqn x**2+b*x+c==0'
   PRINT*, 'Key in the parameters b and c'
   READ*, b
   READ*, c
   d = b**2 - 4.0*c
   IF (d<0) THEN
      PRINT*, 'No real solutions exist.'
   ELSE
      x1=-0.5*(b+sqrt(d))
      x2=-0.5*(b-sqrt(d))
      PRINT*, 'The solutions are ', x1, ' and ', x2
   END IF
 END PROGRAM quad1
