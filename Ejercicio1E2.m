a=[1 4 -6 -1 5.1 1; 
   2 -2.4 -10.5 7.1 1 -4.8;
   -3.4 -4.8 -3.1 -5.1 2 9.2;
   1 -2.1 1.3 4 -7.1 10;
   1 2 0 -1.3 2.1 15.5]
[m,n]=size(a);
for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(z,:)
            a(z,:)=t
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end
x=zeros(1,m);
for s=m:-1:1
    c=0;
    for k=2:m
        c=c+a(s,k)*x(k);
    end
    x(s)=(a(s,n)-c)/a(s,s);
end
a
x'
for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(z,:)
            a(z,:)=t
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end 
end
for j=m:-1:2
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for s=1:m
    a(s,:)=a(s,:)/a(s,s);
    x(s)=a(s,n);
end
a
x'