function alpha = scalingexponent(L_all,data1)
%SCALINGEXPONENT �˴���ʾ�йش˺�����ժҪ
%   L_all ���������Ӧ�ĸ��ߴ�
%   data1 �����ƽ��IPR �������� typical��
    x=log(L_all);
    y=log(data1);
    p=polyfit(x,y,1);
    alpha=-p(1);
end

