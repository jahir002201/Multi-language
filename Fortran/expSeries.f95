! e^x=1+x/1!+x^2/2!+x^3/3!+...+x^n/n!+...

e(x)=1.0+x/fact(1)+x**2/fact(2)+x**3/fact(3)+x**4/fact(4)
print*,'e**5=',e(5.0)
print*,'e**1.5=',e(1.5)
stop
end

function fact(n)
fact=1
do i=2,n
   fact=fact*float(i)
end do
return
end