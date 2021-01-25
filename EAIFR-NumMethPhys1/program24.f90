PROGRAM file_output
IMPLICIT NONE
  INTEGER :: u, ios
  REAL, DIMENSION(5) :: v=(/1.1,1.2,1.3,1.4,1.5/)

  OPEN(UNIT=u, IOSTAT=ios, FILE='myfile2.txt', &
          STATUS='replace', ACTION='write')

  IF (ios == 0) THEN
     WRITE(u, '(5f10.5)') v
     CLOSE(u)
  ELSE
     PRINT '(a25)', 'Error: file not opened.'
  ENDIF
END PROGRAM file_output
