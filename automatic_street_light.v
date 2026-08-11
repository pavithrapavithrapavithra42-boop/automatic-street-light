// Automatic Street Light Controller
// dark = 1 -> Street light ON
// dark = 0 -> Street light OFF

module automatic_street_light (
    input  wire dark,
    output reg  street_light
);

always @(*) begin
    if (dark)
        street_light = 1'b1;
    else
        street_light = 1'b0;
end

endmodule