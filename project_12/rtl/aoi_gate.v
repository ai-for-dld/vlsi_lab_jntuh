module aoi_gate(
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire aoi_out
);

    // implement the aoi logic
    assign aoi_out = ~((a & b) | (c & d));

endmodule
// Simulation parameters
// a CLK 10.000 10.000
// b CLK 20.000 20.000
// c CLK 40.000 40.000
// d CLK 80.000 80.000