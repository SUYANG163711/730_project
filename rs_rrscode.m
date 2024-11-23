function new_msg = rs_rrscode(in_msg, all_code_msg, all_msg)
    %  RS 译码，找到最接近的合法码字
    new_msg = rs_interpret(in_msg, all_code_msg, all_msg);
end
