%%%
% Name : 复指数序列
% Date : 2023-05-23
%%%

K = 2;
n = 0:40;
c = -(1/12) + (pi/6) * i;
x = K * exp(c*n);

% 画出实部
subplot(3, 1, 1);
stem(n, real(x));
grid on;
title('Real part');

% 画出虚部
subplot(3, 1, 3);
stem(n, imag(x));
grid on;
title('Imaginary part');

% 模
subplot(3, 1, 3);
stem(n, abs(x));
grid on;
title('Amplitude part');

%%%
% END
%%%

