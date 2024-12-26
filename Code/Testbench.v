`timescale 1ns / 1ps
module tb();

reg clk,rst;
wire [2:0]EW,NS;

tlc dut(clk,rst,EW,NS);

initial
begin
    clk=0;
end

always #5 clk=~clk;

initial
begin
    #10 rst=1;
    #50 rst=0;
end

initial
begin
    #500 $finish();
end
endmodule
