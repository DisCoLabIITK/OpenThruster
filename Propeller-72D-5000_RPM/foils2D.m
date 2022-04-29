load('foil3D.mat')
k = 1;
x=X3D(:,:,1);
y=Y3D(:,:,k);
z=Z3D(:,:,k);
for i=1:1:length(x(:,1))
    name = strcat('foil',int2str(i));
    for j=1:1:length(x(1,:))
%         data = strcat(string(x(i,j))," ",string(y(i,j))," ",string(z(i,j)));
%         coord(k,:) = [x(i,j) y(i,j) z(i,j)];
        data = 1000*[x(i,j) y(i,j) z(i,j)];
        save(strcat(name,'.asc'),'data','-ascii','-append');
%         k = k+1;
    end
end