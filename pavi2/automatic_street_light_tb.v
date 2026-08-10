`timescale 1ns/1ps

module automatic_street_light_tb;

reg clk;
reg reset;
reg dark;

wire street_light;

automatic_street_light uut (
    .clk(clk),
    .reset(reset),
    .dark(dark),
    .street_light(street_light)
);

// Clock generation
always #5 clk = ~clk;

initial
begin

    $display("-------------------------------------------");
    $display("Time\tReset\tDark\tStreet Light");
    $display("-------------------------------------------");

    $monitor("%0t\t%b\t%b\t%b",
             $time, reset, dark, street_light);

    clk = 0;
    reset = 1;
    dark = 0;

    #10 reset = 0;

    // Daylight condition
    dark = 0;
    #20;

    // Night / dark condition
    dark = 1;
    #20;

    // Daylight again
    dark = 0;
    #20;

    // Night again
    dark = 1;
    #20;

    // Daylight
    dark = 0;
    #20;

    $finish;

end

endmodule