integer rows,cols
parameter(rows=50,cols=78,pi=3.1416)
character*1 screen(cols,rows)
data screen /3900*''/
f(x)=sin(x)
do i=1,cols
    x=-pi+2.0*float(i-1)*pi/float(cols)
    y=f(x)
    iy=nint(y*(rows/2.0-1.0)+rows/2.0)
    screen(i,iy)='*'
end do
print*,((screen(i,j),i=1,cols),j=1,rows)
stop
end
