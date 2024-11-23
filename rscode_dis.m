function dis = rscode_dis(code1, code2)
    % 计算两个 RS 码字之间的码距
    dis = sum(arrayfun(@(i) gf_dis(code1(i), code2(i)), 1:length(code1)));
end
