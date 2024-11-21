clc ;
清除;

%% 参数设置
n = 7 ; % RS码字长度
k = 3； % 信息长度
gf_域 = 3 ; % 有限域GF ( 2 ^ 3 )

% RS生成矩阵
g = [ 1  0  0  3  2  1  3 ;
     0  1  0  5  5  1  4 ;
     0  0  1  7  6  1  6 ] ;
g = gf ( g , gf_domain ) ;

%% 所有可能的信号
all_msg = a_msg ( ) ;
all_msg_gf = gf ( all_msg, gf_domain ) ;
all_code_msg = rs_rscode ( all_msg_gf, g ) ;

%%生成随机信号并编码
味精=下限(兰特( 5 , k ) * 8 ) ;
MSG = gf (味精, gf_domain ) ;
代码= rs_rscode ( MSG , g ) ;

disp ( '随机生成的原始信号：' ) ;
显示（消息）；

disp ( ' RS编码后的码字：' ) ;
disp (双精度(代码.x ) ) ;

%%增加噪声
噪声= [零( 5 , k ) ,下限(兰特( 5 , n - k ) * 8 ) ] ;
噪声= gf (噪声, gf_domain ) ;
in_msg =代码+噪音；

disp ( '加扰后的信号：' ) ;
disp(double(in_msg.x));

%% RS 译码
new_msg = zeros(5, k);
for i = 1:5
    new_msg(i, :) = rs_rrscode(in_msg(i, :), all_code_msg, all_msg);
end

disp('译码后的信号：');
disp(new_msg);

%% 计算正确率
num_same = sum(all(msg == new_msg, 2));
accuracy = num_same / 5;

disp(['译码正确率：', num2str(accuracy * 100), '%']);
