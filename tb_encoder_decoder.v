`timescale 1ns / 1ps

module tb_encoder_decoder;
    reg [3:0] t_in_data;
    reg t_encoder_en;
    wire [1:0] t_out_code;
    wire t_valid_flag;

    reg [1:0] t_in_code;
    reg t_decoder_en;
    wire [3:0] t_out_data;

    priority_encoder_4to2 enc_uut (
        .in_data(t_in_data),
        .enable(t_encoder_en),
        .out_code(t_out_code),
        .valid_flag(t_valid_flag)
    );

    binary_decoder_2to4 dec_uut (
        .in_code(t_in_code),
        .enable(t_decoder_en),
        .out_data(t_out_data)
    );

    initial begin
        t_encoder_en = 0; t_in_data = 4'b1010; t_decoder_en = 0; t_in_code = 2'b11; #15;
        t_encoder_en = 1; t_in_data = 4'b0001; #15;
        t_in_data = 4'b0110; #15;
        t_in_data = 4'b1100; #15;
        t_decoder_en = 1; t_in_code = 2'b00; #15;
        t_in_code = 2'b10; #15;
        t_in_code = 2'b11; #15;
        $finish;
    end
endmodule
