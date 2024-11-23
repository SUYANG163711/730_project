function num = gf2num(gf_a)
    % 将 GF(2^3) 域元素映射到整数
    if gf_a == gf(0, 3), num = 0; end
    if gf_a == gf(1, 3), num = 1; end
    if gf_a == gf(2, 3), num = 2; end
    if gf_a == gf(3, 3), num = 3; end
    if gf_a == gf(4, 3), num = 4; end
    if gf_a == gf(5, 3), num = 5; end
    if gf_a == gf(6, 3), num = 6; end
    if gf_a == gf(7, 3), num = 7; end
end
