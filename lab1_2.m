func1 = @(x) x.^4 + 4*x.^3 - 12*x.^2 + 1;
subplot(1,2,1)
fplot(func1, [-7 5], 'r')
set(xlabel('X'),'Interpreter', 'latex');
set(ylabel('Y'),'Interpreter', 'latex');
title('$x^4 + 4x^3 - 12x^2 + 1 = 0$', 'Interpreter', 'latex');
hold on;
fplot(0,[-7 5],'b');
plot(-5.991,0,'ko',-0.2868,0,'ko',0.2896,0,'ko',1.958,0,'ko');
text(-5.991,20,'-5.991','Interpreter','Latex','FontSize',10);
text(-1.2868,20,'-0.2868','Interpreter','Latex','FontSize',10);
text(0.2896,-20,'0.2896','Interpreter','Latex','FontSize',10);
text(1.958,20,'1.958','Interpreter','Latex','FontSize',10);
hold on
subplot(1,2,2);
func2 = @(x,y) sin(x-y)-x.*y;
func3 = @(x,y) x.^2 - y.^2 - 0.75;
fimplicit(func2,[-10 10 -10 10],'b');
set(xlabel('X'),'Interpreter', 'latex');
set(ylabel('Y'),'Interpreter', 'latex');
title('$sin(x-y)-xy=0; x^2-y^2=0.75$', 'Interpreter', 'latex');
hold on
fimplicit(func3,[-10 10 -10 10],'r');
plot(-1.175,0.7943,'ko',0.9888,0.4773,'ko');
text(-2,1.3,'-5.991','Interpreter','Latex','FontSize',10);
text(0.9888,1.2773,'-0.2868','Interpreter','Latex','FontSize',10);