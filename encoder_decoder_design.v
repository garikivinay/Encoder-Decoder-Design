module priority_encoder_4to2 (
    input wire [3:0] in_data,
    input wire enable,
    output reg [1:0] out_code,
    output reg valid_flag
);
    always @(*) begin
        if (!enable) begin
            out_code   = 2'b00;
            valid_flag = 1'b0;
        end else begin
            valid_flag = 1'b1;
            if (in_data[3])
                out_code = 2'b11;
            else if (in_data[2])
                out_code = 2'b10;
            else if (in_data[1])
                out_code = 2'b01;
            else if (in_data[0])
                out_code = 2'b00;
            else begin
                out_code   = 2'b00;
                valid_flag = 1'b0;
            end
        end
    end
endmodule

module binary_decoder_2to4 (
    input wire [1:0] in_code,
    input wire enable,
    output reg [3:0] out_data
);
    always @(*) begin
        if (!enable)
            out_data = 4'b0000;
        else begin
            case (in_code)
                2'b00: out_data = 4'b0001;
                2'b01: out_data = 4'b0010;
                2'b10: out_data = 4'b0100;
                2'b11: out_data = 4'b1000;
                default: out_data = 4'b0000;
            endcase
        end
    end
endmodule
