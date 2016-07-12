program identity
implicit none

integer, dimension(4,4) :: a
integer :: i

a = 0

do i = 1,4
  a(i,i) = 1
end do

print *, a

end program identity