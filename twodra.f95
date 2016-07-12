program twodra
implicit none

integer, dimension(2,3) :: a
integer :: row, col, count

count = 0

do row = 1,2
  count = 1
  do col = 1,3
    a(row,col) = count
    count = count + 1
  end do
end do

do row = 1,2
  do col = 1,3
    print *, a(row,col)
  end do
end do

end program twodra