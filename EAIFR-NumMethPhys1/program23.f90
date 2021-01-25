PROGRAM format_spec1
IMPLICIT NONE
  INTEGER :: j = 12345
  REAL :: x = 1.414
  REAL, DIMENSION(6) :: v=(/1.1,1.2,1.3,1.4,1.5,1.6/)

  PRINT '(i5)', j
  PRINT '(f10.3)', x

  PRINT '(3f10.3)', v
  PRINT '(f8.4,i10)', x, j
END PROGRAM format_spec1
