program finite_diffs
implicit none

integer :: i,j
integer,dimension(10,10) :: fdm

do i = 1,10
  do j = 1,10
    if (i == j) then
      fdm(i,j) = 2
    elseif (i == (j-1)) then
      fdm(i,j) = -1
    elseif (i == (j+1)) then
      fdm(i,j) = -1
    else
      fdm(i,j) = 0
    end if
  end do
end do

write(*,1) fdm
1 format(10I2)

end program finite_diffs