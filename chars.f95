program chars
implicit none

character :: a*10,b*10
a = 'hello'
b = 'goodbye'
write(*,10) a,b
10 format(2a10)

end program chars