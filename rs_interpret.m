function interpret_msg = rs_interpret(in_msg, all_code_msg, all_msg)
    % 找到接收到的信号中与合法码字之间码距最短的那个码字
    num_msgs = size(all_code_msg, 1); % 合法码字的数量
    rs_dis = zeros(1, num_msgs);
    for i = 1:num_msgs
        rs_dis(i) = rscode_dis(in_msg, all_code_msg(i, :)); % 计算距离
    end
    rs_dis_min = min(rs_dis); % 找到最小距离
    index = find(rs_dis == rs_dis_min); % 最小距离的索引
    interpret_msg = all_msg(index(1), :); % 返回对应的信号
end
