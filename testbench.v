
module testbench();

reg clk, reset; 
reg we;
reg[4:0] r1a;
reg[4:0] r2a;
reg[4:0] wa;
reg[31:0] wd;
wire[31:0] r1d;
wire[31:0] r2d;

localparam CLK_PERIOD=20;

always @*
begin
   clk <= 1;  # (CLK_PERIOD/2);
   clk <= 0;  # (CLK_PERIOD/2);
end


RF myRegister(clk, reset, we, r1a, r2a, wa, wd, r1d, r2d);

initial begin
reset=1;  #(CLK_PERIOD);
reset=0; we=0; wa=5'b10011; wd=121; #(CLK_PERIOD);  
we=1; wa=5'b01101; wd=45; #(CLK_PERIOD);
r1a=5'b10011; r2a=5'b01101; #(CLK_PERIOD);

if (r1d === 121) begin
   $display("Error: Register r1a written with zero enable signal"); $stop;
end
if (r2d !== 45) begin
   $display("Error: Register r2a not reading properly, or not written with enable signal"); $stop;
end
r1a=5'b01101; #(CLK_PERIOD);
if (r1d === 121) begin
   $display("Error: Register r1a not reading properly."); $stop;
end
$display("All tests passed.");
end

endmodule