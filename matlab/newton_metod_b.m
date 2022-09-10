fun = @(x) sin(x)./x;

x = linspace(0, 7, 1000);
y = sin(x)./x;

hold on
grid on
title("sin(x)/x");
xlabel('x');
ylabel('y');
plot(x, zeros(1000), '-');
plot(x, y);

eps = 0.00001;
h = 1e-14; 
z = ginput(1);
plot(z(1,1), z(1,2), 'g*');
hold on
x_left = z(1,1);

for iter = 1 : 1000
    x_n = x_left - h * fun(x_left) / (fun(x_left + h) - fun(x_left));
    plot(x, fun(x_n) - (x_n - x) .* (fun(x_n + h) - fun(x_n)) ./ h);
    plot(x_n, fun(x_n), 'b*');
    if abs(fun(x_n)) < eps
        plot(x_n, fun(x_n), 'r*');
        break;
    end
    x_left = x_n;
end

x_n
fun(x_n)
iter
