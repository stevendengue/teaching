PROGRAM basic_io   ! start of program
  IMPLICIT NONE    ! assume nothing about the variables
  REAL :: x        ! declare real variable

  ! Print a prompt
  PRINT*, 'Enter a real number:'
  ! Read in a number into the variable x
  READ*, x

  ! Print out what was entered
  PRINT*, 'You have entered the number ',x

  ! Print out the number and its square
  PRINT*, 'The square of ', x, ' is ', x*x

END PROGRAM basic_io
