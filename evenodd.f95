program evenodd
implicit none
integer :: i,x
open(10,file = 'evenodd.txt')
do i = 1,10
  read(10,*) x
  if (mod(x,2) > 0) then
    print *, 'This is an odd number:  ', x
  else
    print *, 'This is an even number: ', x
  end if
end do
end program evenodd