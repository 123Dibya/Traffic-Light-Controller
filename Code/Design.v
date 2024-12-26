timescale 1ns / 1ps
module tlc(

input clk,rst,
output reg[2:0]EW,
output reg[2:0]NS
    );
    
reg [1:0]state,nstate;
parameter s0=0,  //East-West Green, transition to Yellow (East-West)
           s1=1,  // After East-West Yellow, transition to North-South Green
           s2=2,  // After North-South Green, transition to Yellow (North-South)
           s3=3;  // After North-South Yellow, transition to East-West Green

always@(posedge clk)
begin
    if(rst==1'b1)
        state<=s0;
    else
        state<=nstate;
end

// State Transistion
always@(*)
begin
    case(state)
            s0:nstate=s1;
            s1:nstate=s2;
            s2:nstate=s3;
            s3:nstate=s0;
            default:
                nstate=s0;
    endcase
end

//Logic 

always @(*) begin
    case (state)
        s0: begin
            EW = 3'b100;    // Green for East-West
            NS = 3'b001;    // Red for North-South
        end
        s1: begin
            EW = 3'b010;    // Yellow for East-West
            NS = 3'b001;    // Red for North-South
        end
        s2: begin
            EW = 3'b001;    // Red for East-West
            NS = 3'b100;    // Green for North-South
        end
        s3: begin
            EW = 3'b001;    // Red for East-West
            NS = 3'b010;    // Yellow for North-South
        end
        default: begin
            EW = 3'b001;    // Default Red for East-West
            NS = 3'b001;    // Default Red for North-South
        end
    endcase
end

endmodule
