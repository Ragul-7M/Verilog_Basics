module sr_ff(
    input S,
    input R,
    input clk,
    output reg Q,
    output reg Qbar
    );
    always @(posedge clk)
    begin
    case({S,R})
        2'b00:begin 
        Q <= Q;
        Qbar <= Qbar;
        end
        
        2'b01:begin 
        Q <= 1'b0;
        Qbar <= 1'b1;
        end
        
        2'b10:begin 
        Q <= 1'b0;
        Qbar <= 1'b1;
        end
        
        2'b11:begin 
        Q <= 1'bx;
        Qbar <= 1'bx;
        end
     endcase
     end        
endmodule