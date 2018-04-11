## 高级优化函数(逻辑回归）
##先定义一个函数计算J(θ)和J（θ）的偏导数

function[jVal,gradient] = costFunction(theta)
     h = zeros(size(X,1),1)
     h = sigmoid(X*theta);
	 m = size(X,1);
	 jVal = 0;
	 for i = 1:m,
	      jVal = jVal + (-y(i).*log(h(i))-(1-y(i)).*log(1-h(i)));
	 end;
	 jVal = (1/m)*jVal;
	 sum = zeros(size(X,2),1);
	 for i = 1:m,
	     sum = sum + (h(i)-y(i)).*X(i,:)';
	 end;
	 grad = (1/m)*sum;
	 
##调用高级优化函数fminunc函数，计算得到最优theta；
##上述计算计算J(θ)和J（θ）的偏导数的代码放入一个.m文件中与主函数在一个目录内时可以直接调用

options = optimset('Gradobj','on','MaxIter',400);
initialTheta = zeros(size(X,1),1);
[optTheta,functionVal,exitFlag]=fminunc(@costFunction,initialTheta,options);
