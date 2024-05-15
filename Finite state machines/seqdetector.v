//101 overlapping sequence detector
module seqdet101overlapmealy (clk,rst,in,state,OP);
    input clk,rst,in;
    output [1:0]state;
    output OP;

    reg [1:0]curr_state,next_state;
    reg op;

    parameter s0 = 0, //idle state
              s1 = 1, //1 detected
              s2 = 2; //10 detected
    
    always @(posedge clk ,negedge rst) begin //block for current state control
        if (!rst) begin //if reset is low, current state of machine returns to s0 and op of machine becomes low
            curr_state <= s0;
            op <= 0;
        end

        else begin
            curr_state <= next_state;//at the next clock edge the state changes to the next state
        end
    end

    always @(curr_state,in) begin //block for next state control
        case (curr_state)
            s0: next_state <= in ? s1 : s0;
            s1: next_state <= in ? s1 : s2;
            s2: next_state <= in ? s1 : s0;
            default: next_state <= s0; 
        endcase
    end
    
    always @(curr_state,in) begin // block for output control   
        case (curr_state)
            s0: op <= 0;
            s1: op <= 0;
            s2: op <= in ? 1 : 0; 
            default: op <= 0;
        endcase
    end

    assign state = curr_state;
    assign OP = op;

endmodule