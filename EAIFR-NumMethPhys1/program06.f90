  PROGRAM if_prog1
    IMPLICIT NONE
    INTEGER :: x, y
    PRINT*, 'Please enter two integers'
    READ*, x
    READ*, y
    IF (x<y) THEN
       PRINT*, 'The first number is the smaller.'
       x = y - x
       PRINT*, 'The difference is ', x
    ELSE
       PRINT*, 'The first number is NOT smaller.'
    ENDIF
  END PROGRAM if_prog1
