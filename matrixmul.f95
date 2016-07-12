program matrixmul
implicit none
!demonstrates the use of matmul array function and dynamic allocation of memory

real, allocatable, dimension(:,:) :: ra1,ra2,ra3
integer :: size

!initialise the arrays
print *, 'Shows array manipulation using SQUARE arrays.'
print *, 'Allocate the space for the array at run time.'
print *, 'Enter the size of your array'
read *, size

allocate(ra1(size,size),ra2(size,size),ra3(size,size))
print *, 'Enter the matrix elements of ra1 row by row'
call fill_array(size,ra1)
print *, 'Enter the matrix elements of ra2 row by row'
call fill_array(size,ra2)

!echo the arrays
print *, 'ra1'
call outputra(size,ra1)
print *, 'ra2'
call outputra(size,ra2)

!demonstrates the use of matmul and transpose intrinsic functions
ra3 = matmul(ra1,ra2)
print *, 'Matmul of ra1 and ra2'
call outputra(size,ra3)
ra3 = transpose(ra1)
print *, 'Transpose of ra1'
call outputra(size,ra3)

deallocate(ra1,ra2,ra3)

end program matrixmul

!++++++++++++++++++++++++++++++++++++++++++++++++++++

subroutine outputra(size,ra)
implicit none
!will output a real square array nicely

integer :: size,row,col
real, dimension(size,size) :: ra
character :: reply*1

do row = 1,size
  write(*,10) (ra(row,col),col = 1,size)
  10 format(100f10.2)
end do

print *, '___________________________________________'
print *, 'Hit a key and press enter to continue'
read *, reply

end subroutine outputra

!++++++++++++++++++++++++++++++++++++++++++++++++++++

subroutine fill_array(size,ra)
implicit none
!fills the array by prompting from keyboard

integer :: row,col,size
real :: num
real,dimension(size,size) :: ra

do row = 1,size
  do col = 1,size
    print *, row,col
    read *, num
    ra(row,col) = num
  end do
end do

end subroutine fill_array