function x = a_msg()
    % 生成所有可能的 3 位信号 (GF(2^3))
    x = [];
    for i = 0:7
        for j = 0:7
            for k = 0:7
                x = [x; i, j, k]; % 将所有信号排列
            end
        end
    end
end