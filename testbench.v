///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: RF (CLK=20)
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2020 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbench();
`include "../Test/Test.v"

///////////////////////////////////////////////////////////////////////////////////
// Inputs: clk, reset, we (1-bit), D (32-bit)
//         r1a, r2a, wa (5-bit)
//         wd (32-bit)
reg clk, reset; 
reg we;
reg[4:0] r1a;
reg[4:0] r2a;
reg[4:0] wa;
reg[31:0] wd;
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
// Outputs: r1d, r2d (32-bit)
wire[31:0] r1d;
wire[31:0] r2d;
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
// Component is CLOCKED
// Set clk period to 20 in wave
localparam CLK_PERIOD=20;
///////////////////////////////////////////////////////////////////////////////////

RF myRegister(.clk(clk), .reset(reset), .we(we), .r1a(r1a), .r2a(r2a), .wa(wa), 
              .wd(wd), .r1d(r1d), .r2d(r2d));
integer stop;

initial begin

/////////////////////////////////////////////////////////////////////////////
// Test: reset=1
$display("Testing reset: All Registers=0");
reset=1;  #(CLK_PERIOD);
stop=0;
for (wa = 5'b00000; (stop == 0); wa = wa + 5'b00001) begin
   verifyEqual32(r1d, 0);
   verifyEqual32(r2d, 0);
   $display("Testing %b=0", wa);
   if (wa == 5'b11111) begin
      stop = 1;
   end
end
/////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////
// Test: write enable (one on, one off)
$display("Testing write enable (r1d=0, r2d=45)");
reset=0; we=0; wa=5'b10011; wd=121; #(CLK_PERIOD);  
we=1; wa=5'b01101; wd=45; #(CLK_PERIOD);
r1a=5'b10011; r2a=5'b01101; #(CLK_PERIOD);
verifyEqual32(r1d, 0);
verifyEqual32(r2d, 45);
/////////////////////////////////////////////////////////////////////////////

$display("All tests passed.");
end

endmodule