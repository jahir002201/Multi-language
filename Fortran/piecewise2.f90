program piecewise2
    real x,y,f
    print*,"x y"
    read(*,*)x,y
    write(*,*)"x y f(x,y)"
    write(*,*)x,y,f(x,y)
end program
 function f(x,y)
    real x,y,f
    if(x.gt.2.0)then
        f=x**2+y**2
        else
            f=0.0
    end if
    return
 end function f
