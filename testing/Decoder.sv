module Decoder (
    input logic [4:0] in;
    logic output out; 

    logic [3:0] out1;

    assign out1[0] = !in[0] & !in[1];
    assign out1[1] = in[0] & !in[1];
    assign out1[2] = !in[0] & in[1];
    assign out1[3] = in[0] & in[1];

    logic [15:0] out2;

    if (out1[0]) {
        assign out2[0] = !in[2] & !in[3];
        assign out2[1] = in[2] & !in[3];
        assign out2[2] = !in[2] & in[3];
        assign out2[3] = in[2] & in[3];
    } else {
        assign out2[0] = 0;
        assign out2[1] = 0;
        assign out2[2] = 0;
        assign out2[3] = 0;
    }
    if (out1[1]) {
        assign out2[4] = !in[2] & !in[3]
        assign out2[5] = in[2] & !in[3]
        assign out2[6] = !in[2] & in[3]
        assign out2[7] = in[2] & in[3]
    } else {
        assign out2[4] = 0;
        assign out2[5] = 0;
        assign out2[6] = 0;
        assign out2[7] = 0;
    }
    if (out1[2]) {
        assign out2[8] = !in[2] & !in[3]
        assign out2[9] = in[2] & !in[3]
        assign out2[10] = !in[2] & in[3]
        assign out2[11] = in[2] & in[3]
    } else {
        assign out2[8] = 0;
        assign out2[9] = 0;
        assign out2[10] = 0;
        assign out2[11] = 0;
    }
    if (out1[3]) {
        assign out2[12] = !in[2] & !in[3]
        assign out2[13] = in[2] & !in[3]
        assign out2[14] = !in[2] & in[3]
        assign out2[14] = in[2] & in[3]
    } else {
        assign out2[12] = 0;
        assign out2[13] = 0;
        assign out2[14] = 0;
        assign out2[15] = 0;
    }
);
    
endmodule