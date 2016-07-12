program areas
implicit none
!Calculates the difference in area of two triangles

real :: base1,base2,height1,height2,area1,area2
character :: response

do
  print *, 'Enter the base lengths of two triangles'
  read *, base1,base2
  print *, 'Enter the height of two tirangles'
  read *, height1,height2
  call calcarea(base1,height1,area1)
  call calcarea(base2,height2,area2)
  print *, area1,area2
  write(*,10) 'The difference in areas is ', abs(area1-area2)
  10 format(a,2f10.3)

  print *, 'Calculate another? - enter Y for yes or press any key to exit'
  read *, response
  if (response /= 'Y' .and. response /= 'y') stop
end do

end program areas

!++++++++++++++++++++++++++++++++++++++++++++++++++++

subroutine calcarea(base,height,area)
implicit none
!Calculate the area

real :: base,height,area
print *, base
print *, height
area = 1./2.*base*height

end subroutine calcarea