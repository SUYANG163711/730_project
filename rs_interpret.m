function interpret_msg = rs_interpret(in_msg, all_code_msg, all_msg)
    % �ҵ����յ����ź�����Ϸ�����֮�������̵��Ǹ�����
    num_msgs = size(all_code_msg, 1); % �Ϸ����ֵ�����
    rs_dis = zeros(1, num_msgs);
    for i = 1:num_msgs
        rs_dis(i) = rscode_dis(in_msg, all_code_msg(i, :)); % �������
    end
    rs_dis_min = min(rs_dis); % �ҵ���С����
    index = find(rs_dis == rs_dis_min); % ��С���������
    interpret_msg = all_msg(index(1), :); % ���ض�Ӧ���ź�
end
