function ret = gf_dis(a, b)
    % 计算 GF 域中两个元素的汉明距离
    a_temp = de2bi(double(a.x), 3, 'left-msb'); % 转换为二进制
    b_temp = de2bi(double(b.x), 3, 'left-msb'); % 转换为二进制
    ret = sum(mod(a_temp + b_temp, 2)); % 计算汉明距离
end
