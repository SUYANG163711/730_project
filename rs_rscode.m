function code = rs_rscode(msg, g)
    % 使用生成矩阵对消息进行 RS 编码
    code = msg * g; % 矩阵乘法，生成码字
end
