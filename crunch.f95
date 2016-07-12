program crunch
implicit none
!there is/are something(s) wrong with this program
!find out what and correct it

integer,parameter :: ikind=selected_real_kind(p=15)
real(kind=ikind) :: a,b,c,d

a = -10.0
b = 23.5
c = a*b
d = sqrt(abs(a))
  
print *,'What is wrong with this?'
print *, 'Nothing now..'
print *, 'c is', c
write(*,*) 'd = ',d

end program crunch