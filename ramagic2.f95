program ramagic2
implicit none

real, dimension(10) :: a,b,c
real :: d
integer :: i

d = 0.0
do i = 1, 10
  a(i) = d
  d = d + 0.1
end do

b = sin(a)
c = cos(a)

print *, 'The vector a is ', a, '.'
print *, 'The sine of each value is ', b
print *, 'The cosine of each value is ', c

end program ramagic2