// Testbench for Automatic Street Light

`timescale 1ns/1ps

module automatic_street_light_tb;

reg dark;
wire street_light;

automatic_street_light DUT (
    .dark(dark),
    .street_light(street_light)
);

initial begin

    // Generate waveform
    $dumpfile("street_light.vcd");
    $dumpvars(0, automatic_street_light_tb);

    $display("AUTOMATIC STREET LIGHT SIMULATION");
    $display("----------------------------------");
    $display("Time\tDark\tStreet Light");

    // Daylight condition
    dark = 1'b0;
    #10;
    $display("%0t\t%b\t%b", $time, dark, street_light);

    // Darkness condition
    dark = 1'b1;
    #10;
    $display("%0t\t%b\t%b", $time, dark, street_light);

    // Daylight condition
    dark = 1'b0;
    #10;
    $display("%0t\t%b\t%b", $time, dark, street_light);

    // Darkness condition
    dark = 1'b1;
    #10;
    $display("%0t\t%b\t%b", $time, dark, street_light);

    #10;
    $finish;

end

endmodule