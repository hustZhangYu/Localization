function y=x2(L,psi)

X=diag(linspace(1,L,L)-L/2);
X=X*X;
y=psi'*X*psi;

end
