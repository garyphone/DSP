clear, n0=3; ns=0; nf=10;
n1=[ns:nf]; x1=[zeros(1,n0-ns), 1, zeros(1,nf-n0)]; %#ok<*NBRAK>
n2=[ns:nf]; x2=[zeros(1,n0-ns), ones(1,nf-n0+1)];
n3=[ns:nf]; x3=exp((-0.2+0.5j)*n3);
subplot(2,2,1), stem(n1,x1); title('单位脉冲序列');
subplot(2,2,2), stem(n2,x2); title('单位阶跃序列');
subplot(2,2,3), stem(n3, real(x3)); line([0, 10], [0, 0]) 
title('复指数序列'); ylabel('实部');
subplot(2,2,4), stem(n3, imag(x3)); line([0, 10], [0, 0])
title('复指数序列'); ylabel('虚部');