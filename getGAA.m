function H=getGAA(L,mu,lambda, delta)
 
% mu: hopping disorder
% lambda :onsite disorder strength 
% delta ; Phase 

alpha=(sqrt(5)-1)/2;
alpha=sqrt(2)/2;

hop=ones(1,L-1)+mu*cos(2*pi*alpha*(linspace(1,L-1,L-1)+ones(1,L-1)/2)+delta);
onsite=lambda*cos(2*pi*alpha*linspace(1,L,L)+delta);
 
H=diag(hop,-1)+diag(hop,1)+diag(onsite);

end
