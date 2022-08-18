program matrixsum
    parameter(n=3)
    dimension a(n,n),b(n,n),c(n,n)
    print*,"Enter the matrix a, columwise"
    read(*,*)((a(i,j),j=1,n),i=1,n)
    print*,"Enter the matrix b, columwise"
    read(*,*)((b(i,j),j=1,n),i=1,n)
    write(6,*)"matrix a="
    write(6,10)((a(i,j),j=1,n),i=1,n)
    10 format(2x,3(f8.1,2x))
    write(6,*)"matrix b="
    write(6,20)((b(i,j),j=1,n),i=1,n)
    20 format(2x,3(f8.1,2x))
    do i=1,n
        do j=1,n
        c(i,j)=a(i,j)+b(i,j)
    end do
    end do
    write(6,*)"matrix a+b="
    write(6,30)((c(i,j),j=1,n),i=1,n)
    30 format(2x,3(f8.1,2x))
end program matrixsum
