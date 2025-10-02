`timescale 1ns / 1ps

module tb_aoi_4_lab12_v01;

    // Inputs
    reg a;
    reg b;
    reg c;
    reg d;

    // Output
    wire aoi_out;

    // Instantiate the Unit Under Test (UUT)
    aoi_gate uut (
        .a(a), 
        .b(b), 
        .c(c), 
        .d(d), 
        .aoi_out(aoi_out)
    );

    // Clock generation for inputs a, b, c, and d
    initial begin
        a = 0;
        b = 0;
        c = 0;
        d = 0;
    end
    
    always #80 a = ~a;  // toggle 'a' every 80 time units
    always #40 b = ~b;  // toggle 'b' every 40 time units
    always #20 c = ~c;  // toggle 'c' every 20 time units
    always #10 d = ~d;  // toggle 'd' every 10 time units

endmodule