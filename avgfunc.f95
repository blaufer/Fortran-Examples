program avgfunc
implicit none

integer, parameter :: ikind = selected_real_kind(p=15)
real(kind = ikind),dimension(5) :: list
real(kind = ikind) :: average
integer :: n,i

n = 0
print *, 'Enter 5 numbers to be averaged: '
do i = 1,5
  read *, list(i)
  n = n + 1
end do

print *, 'The average of these numbers is: ', average(n,list)

end program avgfunc

!++++++++++++++++++++++++++++++++

function average(n,list)
implicit none

integer, parameter :: ikind = selected_real_kind(p=15)
real(kind = ikind),dimension(5) :: list
real(kind = ikind) :: average,total
integer :: n,i

total = 0
do i = 1,5
  total = total + list(i)
end do

average = total/n

end function average