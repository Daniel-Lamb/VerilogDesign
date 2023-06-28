module fulladder(

    output reg Sum,
    output reg Carry_out,
    input A,
    input B,
    input Carry_in
    );
    
    always @*
    begin
        {Sum, Carry_out} = A + B + Carry_in;
    end
    
endmodule