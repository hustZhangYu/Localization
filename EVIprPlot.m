function [] = EVIprPlot(V_all,DataEAll,DataAll)
%EVIPRPLOT 画图显示 E_V_Ipr 图，其中 Ipr代表颜色栏。
%    parameters : 
%    V_all : 可调参数 
%    DataEAll: 输入能量的数值 为N*L 矩阵。（纵轴坐标）
%    DataAll: 输入 Ipr的数值 为 N*L 矩阵。 （颜色轴）
% 注意： DataEAll 的行指标是V ，纵指标是格点。

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

