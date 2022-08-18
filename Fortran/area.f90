program area2
    implicit none
    real::b,h,a
    print*,"Enter height,h= and base b="
    read(*,*)h,b
    call area(b,h,a)
    write(*,*)"area=",a
end program area2
 subroutine area(b,h,a)
    real::a,b,h
    intent(in)::b,h
    intent(out)::a
    a=0.5*b*h
    return
 end subroutine
