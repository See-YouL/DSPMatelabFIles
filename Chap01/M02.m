%%%
% Name : 正弦(余弦)序列数字角频率的理解
% Date : 2023-05-23
%%%

n = 0:40;
x = 1.5 * cos(0.2 * pi * n);

% 画出x图形
stem(n, x);

% 调整坐标显示范围
axis([0 40 -2 2]);
%%%
% Fuction: axis()
% axis([minX maxX minY maxY]) 分别对应设置横纵左边的最大最小值
%%%

% 图中显示网格
grid on;

% 设置图名
title('Sinusoidal Sequence');

% 设置横纵坐标的标识
xlabel('Time index n');
ylabel('Amplitude');

%%%
% END
%%%

