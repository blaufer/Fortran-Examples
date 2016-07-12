program dividebyzero
implicit none
integer :: x
real :: y
do x = -10,10
  if (x == 0) then
    print *, 'Cannot divide by zero'
  else   
  	y = 1.0/x
    print *, y
  end if
end do
end program dividebyzero