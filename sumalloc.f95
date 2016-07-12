program sumalloc
implicit none

integer, allocatable, dimension(:) :: a,b
integer :: elementa,elementb,i,suma,sumb

print *, 'Input the number of elements in vector a:'
read *, elementa
allocate(a(elementa))

print *, 'Your first vector is of size ', elementa, '. Enter each element:'
do i = 1, elementa
  read *, a(i)
end do

print *, 'Input the number of elements in vector b:'
read *, elementb
allocate(b(elementb))

print *, 'Your second vector is of size ', elementb, '. Enter each element:'
do i = 1, elementb
  read *, b(i)
end do

suma = 0
do i = 1, elementa
  suma = suma + a(i)
end do

sumb = 0
do i = 1, elementb
  sumb = sumb + b(i)
end do

print *, 'Your first vector is:'
do i = 1, elementa
  print *, a(i)
end do
print *, 'The sum of this vector is ', suma, '.'

print *, 'Your second vector is:'
do i = 1, elementb
  print *, b(i)
end do
print *, 'The sum of this vector is ', sumb, '.'

deallocate(a)
deallocate(b)

end program sumalloc