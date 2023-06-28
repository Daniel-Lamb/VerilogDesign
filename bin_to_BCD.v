// takes 8-bit binary and converts to 12-bit equivalent Binary Coded Decimal (BCD) representation

module bin_to_BCD(
   input [7:0] bin,
     output reg [11:0] bcd
    );
     integer i;   
     //Double Dabble algorithm
     always @(bin)
        begin
            bcd = 0; 
            for (i = 0; i < 8; i = i+1) 
            begin
                bcd = {bcd[10:0],bin[7-i]}; 
                if(i < 7 && bcd[3:0] > 4) 
                    bcd[3:0] = bcd[3:0] + 3;
                if(i < 7 && bcd[D7:4] > 4)
                    bcd[7:4] = bcd[7:4] + 3;
                if(i < 7 && bcd[11:8] > 4)
                    bcd[11:8] = bcd[11:8] + 3;  
            end
        end         
endmodule