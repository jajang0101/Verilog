`timescale 1ns/ 1ps

module coinbox( clk,rstn,coin,newspaper );

input       clk         ;
input       rstn        ;
input [1:0] coin        ;
output      newspaper   ;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

reg   [1:0] state;
reg   [1:0] next;

always@( posedge clk or negedge rstn )  // State Register
    if( !rstn ) state <= S0;
    else        state <= next;

always@( state or coin ) begin
    next = 2'b0;
    case(state)
        S0: case(coin)
                2'b00: next = S0;
                2'b01: next = S1;
                2'b10: next = S2;
                default: next = S0;
            endcase
        S1: case(coin)
                2'b00: next = S1;
                2'b01: next = S2;
                2'b10: next = S3;
                default: next = S0;
            endcase
        S2: case(coin)
                2'b00: next = S2;
                2'b01: next = S3;
                2'b10: next = S3;
                default: next = S0;
            endcase
        S3: case(coin)
                2'b00: next = S0;
                2'b01: next = S0;
                2'b10: next = S0;
                default: next = S0;
            endcase
    endcase
end

//Output Logic
assign newspaper = (state==S3);

endmodule
