%% short
x = linspace(-6, 3, 100);
y = 0.25*abs(x - 10);
x_short = [-6, -1, 1, 3];
y_short = 0.25*abs(x_short - 10);
plot(x_short, y_short, 'bo');
hold on
plot(x, y, 'b--')
err = abs(y - y5');
errSKO=sqrt(sum((err/(max(y)-min(y))).^2)/100);
errMAX=max(err/(max(y)-min(y)));

%% long
x = linspace(-6, 3, 100);
y = 0.25*abs(x - 10);
x_long = [-6,-5, -4, -3, -2, -1, 1, 2, 3];
y_long = 0.25*abs(x_long - 10);
plot(x_long, y_long, 'bo');
hold on
plot(x, y, 'b--')
err = abs(y - y6');
errSKO=sqrt(sum((err/(max(y)-min(y))).^2)/100);
errMAX=max(err/(max(y)-min(y)));

%% short
x = linspace(-60, 30, 1000);
y = 0.25*abs(x - 10);
x_short = [-60, -10, 10, 30];
y_short = 0.25*abs(x_short - 10);
plot(x_short, y_short, 'bo');
hold on
plot(x, y, 'b--')
err = abs(y - y7');
errSKO=sqrt(sum((err/(max(y)-min(y))).^2)/100);
errMAX=max(err/(max(y)-min(y)));

%% long
x = linspace(-60, 30, 1000);
y = 0.25*abs(x - 10);
x_long = [-60,-50, -40, -30, -20, -10, 10, 20, 30];
y_long = 0.25*abs(x_long - 10);
plot(x_long, y_long, 'bo');
hold on
plot(x, y, 'b--')
err = abs(y - y8');
errSKO=sqrt(sum((err/(max(y)-min(y))).^2)/100);
errMAX=max(err/(max(y)-min(y)));
