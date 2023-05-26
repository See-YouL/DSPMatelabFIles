%%%
% Name : 用Matlab产生并画出单位抽样序列δ(n)
% Date : 2023-05-18
%%%

% 确定横坐标的显示范围
n = -10:20;

% 确定与横坐标匹配的δ(n)
delta = [zeros(1, 10) 1 zeros(1, 20)];
%%%
% Fuction: zeros()
% zeros(m, n) 产生一个 m*n 的全零矩阵
%%%

% 画出δ(n)
stem(n, delta);

% 图中显示网格
grid on;

% 设置横纵坐标的标识
xlabel('Time indx n');
ylabel('Amplitude');

% 设置图名
title('Unit Sample Sequence');

% 调整坐标显示范围
axis([10 20 0 1.2]);
%%%
% Fuction: axis()
% axis([minX maxX minY maxY]) 分别对应设置横纵左边的最大最小值
%%%

%%%
% END
%%%

