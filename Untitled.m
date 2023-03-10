x_long = linspace(-30,30,1000);
x_short = linspace(-3,3,100);

y_long_mon = 2*atan(x_long - 3);
y_short_mon = 2*atan(x_short - 3);
y2_long_mon = 1.5*exp(0.01*x_long);
y2_short_mon = 1.5*exp(0.01*x_short);

y_long_sin_non_mon_smooth = 4*sin(x_long + 3);
y_short_sin_non_mon_smooth = 4*sin(x_short + 3);
y_long_cos_non_mon_smooth = 3*cos(x_long) + 3;
y_short_cos_non_mon_smooth = 3*cos(x_short) + 3;

y_long_non_smooth = 0.25*abs(x_long - 10);
y_short_non_smooth = 0.25*abs(x_short - 10);
y2_long_non_smooth = 5*acot(x_long.^0.9) + 2;
y2_short_non_smooth = 5*acot(x_short.^0.9) + 2;
clc
long = figure;
plot(x_long, y_long_mon, 'g-'); hold on
plot(x_long, y2_long_mon, 'g--');
plot(x_long, y_long_sin_non_mon_smooth, 'r-');
plot(x_long, y_long_cos_non_mon_smooth, 'r--');
plot(x_long, y_long_non_smooth, 'b-');
plot(x_long, y2_long_non_smooth, 'b--');
legend('y = (2*x_long+3).^0.2: монотонная', 'y = 1.5*e^0.01x_long: монотонная', 'y = 4*sin(x_long + 3): немонотонная и гладкая',...
'y = 3*cos(x_long) + 3: немонотонная и гладкая', 'y = 0.25*abs(x_long - 10): негладкая', 'y = 5*acot(x_long^0.9) + 2: негладкая')

short = figure;
plot(x_short, y_short_mon, 'g-'); hold on
plot(x_short, y2_short_mon, 'g--');
plot(x_short, y_short_sin_non_mon_smooth, 'r-');
plot(x_short, y_short_cos_non_mon_smooth, 'r--');
plot(x_short, y_short_non_smooth, 'b-');
plot(x_short, y2_short_non_smooth, 'b--');
legend('y = (2*x_short+3).^0.2: монотонная', 'y = 1.5*e^0.01x_short: монотонная', 'y = 4*sin(x_short + 3): немонотонная и гладкая',...
'y = 3*cos(x_short) + 3: немонотонная и гладкая', 'y = 0.25*abs(x_short - 10): негладкая', 'y = 5*acot(x_short^0.9) + 2: негладкая')