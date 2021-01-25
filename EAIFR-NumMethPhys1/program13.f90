PROGRAM array_prog2
  IMPLICIT NONE
  INTEGER, DIMENSION(2,2) :: my_matrix
  INTEGER :: i,j

  DO i = 1, 2
    DO j =1, 2
      my_matrix(i,j) = i + i + j -2
    ENDDO
  ENDDO

  PRINT*, my_matrix
END PROGRAM array_prog2 
