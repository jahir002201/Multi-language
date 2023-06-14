! 1+(1+1/2)+(1+1/2+1/3)+...+(1+1/2+1/3+...+1/n)

parameter (n=10)
sum=0.0
do i=1,n
  do j=1,i
    sum=sum+1.0/float(j)
  end do
end do
print *,'sum=',sum
end    