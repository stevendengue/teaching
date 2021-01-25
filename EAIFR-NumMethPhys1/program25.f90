  PROGRAM fibprog1
     IMPLICIT NONE
     INTEGER :: u, ios
     INTEGER(8) :: x, y, z
     INTEGER :: n=3
     OPEN(UNIT=u, IOSTAT=ios, FILE='fibdata.txt', STATUS='new')
     z=1
     y=1
   2 x=y+z
     WRITE(u,'(i22, f40.32)') x, x/(1.0_16*y)
     z=y
     y=x
     n=n+1
     IF (n<51) GO TO 2
   END PROGRAM fibprog1
