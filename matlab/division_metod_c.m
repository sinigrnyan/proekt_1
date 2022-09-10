fun = @(x) 1 + (1 + sin(x) - cos(x)).^2 - (sin(2 .* x) - cos(2 .* x) - 0.2).^2;

x = linspace(-7, 7, 1000);
y = 1 + (1 + sin(x) - cos(x)).^2 - (sin(2 .* x) - cos(2 .*x) - 0.2).^2;

hold on
grid on
title("1 + (1 + sin(x) - cos(x))^2 - (sin(2 * x) - cos(2 * x) - 0.2)^2");
xlabel('x');
ylabel('y');
plot(x, zeros(1000), '-');
plot(x, y);

z = ginput(2);
plot(z(1,1), fun(z(1,1)), 'g*', z(2,1), fun(z(2,1)), 'g*');

left = z(1,1);
right = z(2,1);
eps = 1e-14;

for iter = 1 : 1000
    mid = (left + right) / 2;
    plot(mid, fun(mid), 'b*');
    if fun(left) > 0 && fun(right) > 0 && fun(mid) > 0
        break;
    end
    if fun(left) < 0 && fun(right) < 0 && fun(mid) < 0
        break;
    end
    if(abs(fun(mid)) < eps)
        plot(mid, fun(mid), 'r*');
        break;
    end
    if fun(left) * fun(mid) > 0
        left = mid;
    end
    if fun(right) * fun(mid) > 0
        right = mid;
    end
end
mid 
fun(mid)
iter