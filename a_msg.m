function x = a_msg()
    % �������п��ܵ� 3 λ�ź� (GF(2^3))
    x = [];
    for i = 0:7
        for j = 0:7
            for k = 0:7
                x = [x; i, j, k]; % �������ź�����
            end
        end
    end
end