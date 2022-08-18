dimension m(2,3)
read*,((m(i,j),i=1,2),j=1,3)
print 20,((m(i,j),i=1,2),j=1,3)
print 10,((m(i,j),j=1,3),i=1,2)
20 format(2i4)
10 format(3i6)
stop
end
