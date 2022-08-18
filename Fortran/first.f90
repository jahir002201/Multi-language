! A program to calculate the squares of the first ten integers
implicit none
integer int,intsq
do int=1,15
    intsq=int*int
    write(*,*)intsq
end do
stop
end
