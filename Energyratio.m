function r = Energyratio(E,a)
%ENERGYRATIO ͨ���������������ratio
%  E:����ı�������������Floquet����ı���ֵ
%  a: �������ܶ�������Floquet����Ĳ���

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

