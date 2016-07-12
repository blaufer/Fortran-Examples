program temperature
implicit none

real :: temp,output
character :: in

print *, 'Input a temperature to be converted'
read *, temp

print *, 'Is this in Celsius (C) or Fahrenheit (F)?'
read *, in
if (in == 'C' .or. in == 'c') then
  call ctof(temp,output)
  print *, output, 'F'
else if (in == 'F' .or. in == 'f') then
  call ftoc(temp,output)
  print *, output, 'C'
else
  print *, 'This is not a valid input'
end if

end program temperature

!+++++++++++++++++++++++++++++++++++++++++++++++++++++

subroutine ctof(temp,output)
implicit none

real :: temp,output

output = temp*9/5+32

end subroutine ctof

!+++++++++++++++++++++++++++++++++++++++++++++++++++++

subroutine ftoc(temp,output)
implicit none

real :: temp,output

output = (temp-32)*5/9

end subroutine ftoc