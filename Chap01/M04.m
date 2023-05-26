%%%
% Name : 用 Matlab 产生均匀分布的随机信号
% Date : 2023-05-24
%%%

n = 2;
m = 4;

% 用 Matlab 产生均匀分布的随机信号(序列)
x1 = rand(n);
x2 = rand(m, n);
%%%
% Fuction : rand()
% rand(n); 生成 n*n 的均匀分布的随机矩阵, 随机值的区间在(0, 1)之间
% rand(m, n); 生成 m*n 的均匀分布的随机矩阵, 随机值的区间在(0, 1)之间
%%%%

% 用 Matlab 产生零均值单位方差的正态分布的随机信号(序列)
x3 = randn(n);
x4 = randn(m, n);
%%%
% Function : randn()
% randn(n); 生成 n*n 的零均值单位方差正态分布的随机矩阵
% randn(m, n); 生成 m*n 的零均值单位方差正态分布的随机矩阵

%%%
% END
%%%

