##添加二维图像的代码
##如x1、x2和y

##应用于logistic regression

pos = find(y==1);
neg = find(y==0);

plot(X(pos,1),X(pos,2),'k+','MarkerFaceColor','LineWidth',2);
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);



