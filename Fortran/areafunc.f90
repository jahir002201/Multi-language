program areafunc
    implicit none
    real::b,h,area
    print*,"Enter height,h= and base b= "
    read(*,*)h,b
    write(*,*)"the area is = ",area(b,h)
end program
  function area(b,h)
    real::b,h,area
    area=0.5*b*h
    return
  end function
