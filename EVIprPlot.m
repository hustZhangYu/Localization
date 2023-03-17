function [] = EVIprPlot(V_all,DataEAll,DataAll)
%EVIPRPLOT ��ͼ��ʾ E_V_Ipr ͼ������ Ipr������ɫ����
%    parameters : 
%    V_all : �ɵ����� 
%    DataEAll: ������������ֵ ΪN*L ���󡣣��������꣩
%    DataAll: ���� Ipr����ֵ Ϊ N*L ���� ����ɫ�ᣩ
% ע�⣺ DataEAll ����ָ����V ����ָ���Ǹ�㡣

L=size(DataEAll,2);
DataX=zeros(length(V_all),L);
for i=1:length(V_all)
   DataX(i,:)=ones(1,L)*V_all(i);  
end
for i=1:length(V_all)
    scatter(DataX(i,:),DataEAll(i,:),'.','cdata',(DataAll(i,:)))
    hold on;
end
colorbar()

end

