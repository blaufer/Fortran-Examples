program identity1
implicit none

integer :: x(5,5),i,j

x = 0
do i = 1,5
  x(i,i) = 1
end do

do i = 1,5
  write(*,1) (x(i,j), j = 1,5)
end do

1 format(10i5)

end program identity1