a = 1.5;
b = 2.5;
c = 1;
[X,Y,Z1] = meshgrid(-20:0.1:20,-20:0.1:20,-4.5:0.1:-1.5);
V1 = X.^2./a^2 + Y.^2./b^2 - Z1.^2./c^2 - 1;
[X,Y,Z2] = meshgrid(-20:0.1:20,-20:0.1:20,1.5:0.1:4.5);
V2 = X.^2./a^2 + Y.^2./b^2 - Z2.^2./c^2 - 1;
p1=patch(isosurface(X,Y,Z1,V1,1,X));
p2=patch(isosurface(X,Y,Z2,V2,1,X));
set(p1,'FaceColor','interp','EdgeColor','none');
set(p2,'FaceColor','interp','EdgeColor','none');
colormap flag;
colorbar;
daspect([1 1 1]);
view(3);
camlight;
set(gca,'LineWidth',1.0);
set(gca,'XColor','b');
set(gca,'YColor','b');
set(gca,'ZColor','b');
set(xlabel('X'),'Interpreter', 'latex');
set(ylabel('Y'),'Interpreter', 'latex');
set(zlabel('Z'),'Interpreter', 'latex');
title('$x^2/a^2+y^2/b^2-z^2/c^2=-1$', 'Interpreter', 'latex');
