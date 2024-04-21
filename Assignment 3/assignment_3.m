x = [94,96,94,95,104,106,108,113,115,121,131]';
y = [0.47,0.75,0.83,0.98,1.18,1.29,1.40,1.60,1.75,1.90,2.23]';

w_hat = inv(x' * x) * x' * y;

y_hat = x * w_hat;

sigma_hat = 1 / (10) .* sum((y - y_hat).^2)

w_N = inv(x' * x + 1) * (x' * x * w_hat)
