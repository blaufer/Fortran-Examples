program xytab
implicit none
real :: x,y,z
print *, '     x          y          z'
do x = 1,2,0.5
  do y = 1,2,0.5
    z = x**y
    print *, x,y,z
  end do
end do
end program xytab