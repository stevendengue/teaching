PROGRAM alloc
  IMPLICIT NONE
  REAL(8), DIMENSION(:), ALLOCATABLE :: my_vec
  !REAL(8), ALLOCATABLE :: my_vec(:)
  INTEGER :: n, ncpts
  PRINT*, 'Enter number of coordinates:'
  READ*, ncpts
  ALLOCATE( my_vec(ncpts) )
  DO n = 1, ncpts
    my_vec(n) = ACOS(-1.0_8)**n
  ENDDO
  PRINT*, my_vec
END PROGRAM alloc
