//Date:2/9/21
//Aim : To solve the system of non-homogeneous linear equations by using Gaussian Elimination method
clc
clear
a=input("Enter the matrix A:")
b=input("Enter the matrix B:")
c=[a b]
disp('The Augmented Matrix :',c)
[m n]= size(c)
disp('The size of the matrix :',[m n])
for i=1:n-2 //for i starts from 1st column to n-2 column in the augmented mxn matrix 
    for j=i+1:m //for j starts from second row to mth row for each row operation
        disp("i",i)
        disp("j",j)
//Partial Pivoting
        if c(i,j)==0
            [m index]= max(c(i+1:m),j)
            disp([m index])
            c((j,index),:)= c((index,j),:)
            else 
        c(j,:)=c(j,:)-((c(j,i)/c(i,i))*c(i,:)) //first it will go for first column second row and third row operation respectively then for i=2 it will go for third row operation and so on
        disp("The Row Reduced form for each itration : ",c)
end
end
end
disp ("The final Matrix after Row Operation :",c)
//Backward Substitution
x(m)=c(m,n)/c(m,m)//Last Row Substitution
disp("The last value of X :",x(m))
for i=m-1:-1:1
    disp("i",i)
    x(i)=(c(i,n)-(c(i,i+1:m)*x(i+1:m)))/c(i,i)
    disp("The Values of x",x)
end
