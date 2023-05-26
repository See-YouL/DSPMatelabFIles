# DSP Matelab Files

## CONTENTS 目录

1. 画出单位时间序列
2. 正弦型序列数字角频率的理解
3. 画出复指数序列
4. 用Matlab产生均匀分布的随机信号
5. 产生离散振幅调制信号

## Chap01 第一章

### 画出单位时间序列

#### 源代码

```matlab
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


```

#### 输出图像

![M01Figure1](https://raw.githubusercontent.com/See-YouL/MarkdownPhotos/main/202305261939581.png

### 正弦型序列数字角频率的理解

#### 源代码

```matlab
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

```

#### 输出图像

![M02Figure1](https://raw.githubusercontent.com/See-YouL/MarkdownPhotos/main/202305261941177.png)

### 画出复指数序列

#### 源代码

```matlab
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

```

#### 输出图像

![M03Figure1](https://raw.githubusercontent.com/See-YouL/MarkdownPhotos/main/202305261941547.png)

### 用 Matelab 产生均匀分布的随机信号

#### 源代码

```matlab
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

```

#### 工作区截图

![工作区截图](https://raw.githubusercontent.com/See-YouL/MarkdownPhotos/main/202305261943109.png)

### 产生离散振幅调制信号

#### 理论计算过程

![理论计算过程](https://raw.githubusercontent.com/See-YouL/MarkdownPhotos/main/202305261944908.png)

计算可得周期N为200

#### 源代码

```matlab
%%%
% Name : 产生离散振幅调制信号
% Date : 2023-05-26
%%%

A = 1;
m = 0.5;
wL = 0.01 * pi;
wH = 0.2 * pi;
n = 0:999; % 需通过理论计算得到周期N

x = A * (1 + m * cos(wL * n)) .* cos(wH * n);
%%%
% 注:
% 请使用 .* 运算符, 若将 .* 换成 * 则会出现如下报错信息
% 用于矩阵乘法的维度不正确。请检查并确保第一个矩阵中的列数与第二个矩阵中的行数匹配。要执行按元素相乘，请使用 '.*'。
%%%

stem(n, x, 'r');
grid on;
xlabel('n');
ylabel('x(n)');

%%%
% END
%%%

```

#### 输出图像

![M05Figure1](https://raw.githubusercontent.com/See-YouL/MarkdownPhotos/main/202305261944792.png)

