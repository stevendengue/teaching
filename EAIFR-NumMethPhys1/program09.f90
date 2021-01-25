INTEGER(8) RECURSIVE FUNCTION myfac(n) RESULT(res)
  INTEGER(8), INTENT(IN) ::n
  IF (n<2) THEN
    res = 1
  ELSE
    res = n*myfac(n-1)
  ENDIF
END FUNCTION myfac

PROGRAM factorial
  IMPLICIT NONE
  INTEGER(8) :: m, n
  INTEGER(8), EXTERNAL :: myfac
  READ*, n
  m = myfac(n)
  PRINT*, n, 'factorial is ', m
END PROGRAM factorial
