PROGRAM string_prog1
  IMPLICIT NONE
  CHARACTER, DIMENSION(5) :: s1 = (/'H','e','l','l','o'/)
  CHARACTER(LEN=12) :: s2 = 'Hello again!'
  CHARACTER(19) :: s3 = ", what's your name?"
  CHARACTER(30) :: s4

  s4 = s2(1:5) // s3
  PRINT*, s4
END PROGRAM string_prog1
