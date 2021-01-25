PROGRAM file_input
IMPLICIT NONE
  INTEGER :: i, u , ios
  INTEGER(8), DIMENSION(50) :: xv
  REAL(16), DIMENSION(50) :: pv
  REAL(16) :: phi
  phi = 0.5*(SQRT(5.0_16)+1)
  OPEN(UNIT=u, IOSTAT=ios, FILE='fibdata.txt', &
          STATUS='old', ACTION='read')
  IF (ios == 0) THEN
     DO i = 3, 50
       READ(u, '(i22, f40.32)') xv(i), pv(i)
     ENDDO
     CLOSE(u)
     DO i = 3, 50
       PRINT '(i4, e15.5)', i, pv(i)-phi
     ENDDO
  ELSE
     PRINT '(a25)', 'Error: file not opened.'
  ENDIF
END PROGRAM file_input
