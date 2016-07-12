program trig
implicit none
real :: a,pi
print *, 'Input an angle between 0 and 90: '
read *, a
pi = 40*atan(1.0)
print *, 'The sine of ',a,'is ',sin(a*pi/180)
end program trig