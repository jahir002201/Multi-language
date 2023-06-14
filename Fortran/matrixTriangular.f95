! matrix lower triangular and upper triangular 

parameter (n=10)
dimension a(n,n)
open (unit=24,file='H3.TXT',status='old')
read(24,*) ((a(i,j),j=1,n),i=1,n)
close(24)
sumd=0.0
sumu=0.0
suml=0.0
do i=1,n
  do j=1,n
    if(i.eq.j) sumd=sumd+a(i,j)
    if(i.lt.j) sumu=sumu+a(i,j)
    if(i.gt.j) suml=suml+a(i,j)
  end do
end do
print*, 'diagonal sum = ',sumd
print*, 'upper triangular sum = ',sumu
print*, 'lower triangular sum = ',suml
stop
end
    