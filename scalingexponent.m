function alpha = scalingexponent(L_all,data1)
%SCALINGEXPONENT 此处显示有关此函数的摘要
%   L_all 代表的是相应的格点尺寸
%   data1 代表的平均IPR ，或者是 typical的
    x=log(L_all);
    y=log(data1);
    p=polyfit(x,y,1);
    alpha=-p(1);
end

