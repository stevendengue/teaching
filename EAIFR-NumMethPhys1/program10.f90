SUBROUTINE pairsort(x,y)
  INTEGER :: x,y
  INTEGER :: n
  IF (x>y) THEN
    n = x
    x = y
    y = n
  ENDIF
END SUBROUTINE pairsort

PROGRAM sort0
  IMPLICIT NONE
  INTEGER :: a, b
  READ*, a, b
  PRINT*, 'a = ', a, ' b = ', b
  CALL pairsort(a,b)
  PRINT*, 'a = ', a, ' b = ', b
END PROGRAM
