function gamma=Localizationlength(psi1)

% give an wavefunction and calculate the localization length
% instead, we calculate the Lyapunov exponent
% procedure
% 1. we take the log of the wavefunction.
% 2. then we find the max vlaue 
% 3.extend to both side until meet the NaN.
% 4.choose the longer chain and take a linear fitting

psi=log(psi1.*conj(psi1));

%drop the inf
I=isinf(psi);
psi(I)=[];

% find The max position 'b'
[a,b]=max(psi);

if b>length(psi)
    y=psi(1:b,1);
    x=linspace(1,length(y),length(y))';
    p=polyfit(x,y,1);
    gamma=-p(1)/2;
else
    y=psi(b:length(psi),1);
    x=linspace(1,length(y),length(y))';
    p=polyfit(x,y,1);
    gamma=-p(1)/2;
end

end