function r = Energyratio(E,a)
%ENERGYRATIO 通过输入能量来输出ratio
%  E:输入的本征能量，或者Floquet算符的本征值
%  a: 描述哈密顿量或者Floquet算符的参数

N=length(E);

if a==0
E1=sort(E);
dE=E1(2:N)-E1(1:N-1);    
end

if a==1
E1=sort(angle(E));
dE=E1(2:N)-E1(1:N-1);    
end

r=0;
for i=1:N-2
   r=r+min(dE(i),dE(i+1))/max(dE(i),dE(i+1));     
end
r=r/(N-2);


end

