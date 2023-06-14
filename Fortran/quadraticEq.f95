! ax^2+bx+c=0

print*,'enter a,b,c values: '
read*,a,b,c
if(a.eq.0.0)stop
  d=b**2-4.0*a*c
if(d.ge.0.0)then
    root1=(-b+sqrt(d))/(2.0*a)
    root2=(-b-sqrt(d))/(2.0*a)
print*,'root1=',root1,'root2=',root2
else
    print*,'roots are complex'
end if
stop
end
