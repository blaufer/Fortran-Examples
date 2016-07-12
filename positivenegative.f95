program positivenegative
implicit none
real :: x
integer :: i
open(10,file = 'posneg.txt')
open(11,file = 'positive.txt')
open(12,file = 'negative.txt')
do i = 1,10
  read(10,*) x
  if (x > 0) then
    write(11,*) x
  else
    write(12,*) x
  end if
end do
end program positivenegative