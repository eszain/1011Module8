% Assigning constants to the variables
angle = [pi/6 pi/4 pi/3]; % angles are in radians (30, 45, 60 degress respectively)
vo = 25;
yo = 3.5;
g = 9.81;
n = length(angle);
z = 1;

% Solving for d at 30, 45 and 60 degrees
for i = 1:n
    d(z) = ((vo*cos(angle(i)))/g)*((vo*sin(angle(i)))+sqrt(((vo*sin(angle(i)))^2)+(2*g*yo)));
    z = z + 1;
end

% Creating x values
x1 = linspace(0,d(1),200);
x2 = linspace(0,d(2),200);
x3 = linspace(0,d(3),200);

% Creating y values
for i = 200:1
    y1(i) = (x1(i)*tan(angle(1)))-((0.5*(x1(i)^2)*g)/((vo*cos(angle(1)))^2)) + yo;
    y2(i) = (x2(i)*tan(angle(2)))-((0.5*(x2(i)^2)*g)/((vo*cos(angle(2)))^2)) + yo;
    y3(i) = (x3(i)*tan(angle(3)))-((0.5*(x3(i)^2)*g)/((vo*cos(angle(3)))^2)) + yo;
end

% Plotting the graphs
plot(x1,y1,'b')
hold on
plot(x2,y2,'r')
plot(x3,y3,'g')

% Legend, Title, axis labels. 
legend('Projectile at 30 degrees', 'Projectile at 45 degrees', 'Projectile at 60 degrees') 
title('Projectile at different angles') 
xlabel('Range d of the projectile [m]'); 
ylabel('Height of the projectile [m]');