%% short
x = linspace(-6, 3, 100);
y = 4*sin(x + 3);
x_short = [-6, -1, 1, 3];
y_short = 4*sin(x_short + 3);
plot(x_short, y_short, 'bo');
hold on
plot(x, y, 'b--')
err = abs(y - y1');
errSKO=sqrt(sum((err/(max(y)-min(y))).^2)/100);
errMAX=max(err/(max(y)-min(y)));

%% long
x = linspace(-6, 3, 100);
y = 4*sin(x + 3);
x_long = [-6,-5, -4, -3, -2, -1, 1, 2, 3];
y_long = 4*sin(x_long + 3);
plot(x_long, y_long, 'bo');
hold on
plot(x, y, 'b--')
err = abs(y - y2');
errSKO=sqrt(sum((err/(max(y)-min(y))).^2)/100);
errMAX=max(err/(max(y)-min(y)));

%% short
x = linspace(-60, 30, 1000);
y = 4*sin(x + 3);
x_short = [-60, -10, 10, 30];
y_short = 4*sin(x_short + 3);
plot(x_short, y_short, 'bo');
hold on
plot(x, y, 'b--')
err = abs(y - y3');
errSKO=sqrt(sum((err/(max(y)-min(y))).^2)/100);
errMAX=max(err/(max(y)-min(y)));

%% long
x = linspace(-60, 30, 1000);
y = 4*sin(x + 3);
x_long = [-60,-50, -40, -30, -20, -10, 10, 20, 30];
y_long = 4*sin(x_long + 3);
plot(x_long, y_long, 'bo');
hold on
plot(x, y, 'b--')
err = abs(y - y4');
errSKO=sqrt(sum((err/(max(y)-min(y))).^2)/100);
errMAX=max(err/(max(y)-min(y)));