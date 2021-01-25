RECURSIVE SUBROUTINE myfac(n,res)
  INTEGER(8), INTENT(IN) :: n
  INTEGER(8), INTENT(INOUT) :: res
  INTEGER(8)  :: p
  IF (n<2) THEN
    res = 1
  ELSE
    CALL myfac(n-1,p)      
    res = n*p
  ENDIF
END SUBROUTINE myfac

PROGRAM factorial
  IMPLICIT NONE
  INTEGER(8) :: m, n
  READ*, n
  call myfac(n,m)
  PRINT*, n, 'factorial is ', m
END PROGRAM factorial
