module automatic_street_light(
    input clk,
    input reset,
    input dark,
    output reg street_light
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        street_light <= 1'b0;
    else
    begin
        if (dark)
            street_light <= 1'b1;
        else
            street_light <= 1'b0;
    end
end

endmodule