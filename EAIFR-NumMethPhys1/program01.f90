PROGRAM myfirstprogram
 IMPLICIT NONE    ! no assumption about variables
 REAL(8) :: x,y,z ! Declaration of x,y,z as real
 x=5.1d0          ! Assign x
 y=-17.2d0        ! Assign y
 z=x*y            ! Assign (x*y) to z
 PRINT*,'The product of x and y is',z ! Print out z
END PROGRAM myfirstprogram 
