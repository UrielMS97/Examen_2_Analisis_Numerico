x=[-3 -1.5 0 2.1 3.2 6]
y=[-13.2 -7.2 3.5 -2 7 12.1]
sum_x=0;
sum_x_2=0;
sum_x_3=0;
sum_x_4=0;
sum_y=0;
sum_y_x=0;
sum_y_x_2=0;

for i=1:length(x)
    sum_x=sum_x + x(i);
    sum_x_2 =sum_x_2+x(i)^2;
    sum_x_3=sum_x_3+x(i)^3;
    sum_x_4=sum_x_4+x(i)^4;
    sum_y = sum_y+y(i);
    sum_y_x =sum_y_x + (y(i)*x(i));
    sum_y_x_2 =sum_y_x_2 + (y(i)*x(i)*x(i));
end
A=[length(x) sum_x sum_x_2; sum_x sum_x_2 sum_x_3; sum_x_2 sum_x_3 sum_x_4];
B=[sum_y; sum_y_x; sum_y_x_2];
C=inv(A)*B;