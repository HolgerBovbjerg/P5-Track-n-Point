clear 
A=gallery('circul',2);
[V,D] = eig(A);
A
V*D*inv(V)

