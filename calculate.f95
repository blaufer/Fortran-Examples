program calculate
implicit none
!A simple calculator
real :: x,y,z,answer1,answer2,answer3
x = 1.5
y = 2.5
z = 3.5
answer1 = (x + y) / (x + z)
answer2 = x*y*z
answer3 = x**y**z
print *, 'The results are ',answer1,answer2,answer3
end program calculate