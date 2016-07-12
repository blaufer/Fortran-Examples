program swap
!This program swaps to variables
real :: a,b,c
print *, 'Input two numbers: '
read *, a,b
print *, 'The values of a and b respectively are: ',a,b
c = a
a = b
b = c
print *, 'The values of a and b are now: ',a,b
end program swap