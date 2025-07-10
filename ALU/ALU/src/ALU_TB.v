`timescale 1ns / 1ps

module Alu_tb;

    reg [7:0] A_tb, B_tb;
    reg [4:0] opcode_tb;
    wire [7:0] result_tb;
    wire carry_tb, zero_tb, parity_tb, overflow_tb, borrow_tb;

    Alu uut (
        .A(A_tb),
        .B(B_tb),
        .opcode(opcode_tb),
        .result(result_tb),
        .carry(carry_tb),
        .zero(zero_tb),
        .parity(parity_tb),
        .overflow(overflow_tb),
        .borrow(borrow_tb)
    );

    initial begin
        // Test 1: ADD
        A_tb = 8'b01011010;
        B_tb = 8'b11001101;
        opcode_tb = 5'b00000; // ADD
        #10;
        if (result_tb === 8'b00100111) 
            $display("Test 1 passed! Expected: %b, Got: %b", 8'b00100111, result_tb);
        else
            $display("Test 1 failed! Expected: %b, Got: %b", 8'b00100111, result_tb);
        
        // Test 2: SUB
        A_tb = 8'b10101010;
        B_tb = 8'b01010101;
        opcode_tb = 5'b00001; // SUB
        #10;
        if (result_tb === 8'b01010101) 
            $display("Test 2 passed! Expected: %b, Got: %b", 8'b01010101, result_tb);
        else
            $display("Test 2 failed! Expected: %b, Got: %b", 8'b01010101, result_tb);

        // Test 3: INC
        A_tb = 8'b00001111;
        B_tb = 8'b00000000;
        opcode_tb = 5'b00010; // INC
        #10;
        if (result_tb === 8'b00010000) // Correct expected result
            $display("Test 3 passed! Expected: %b, Got: %b", 8'b00010000, result_tb);
        else
            $display("Test 3 failed! Expected: %b, Got: %b", 8'b00010000, result_tb);

        // Test 4: DEC
        A_tb = 8'b00001111;
        B_tb = 8'b00000000;
        opcode_tb = 5'b00011; // DEC
        #10;
        if (result_tb === 8'b00001110) 
            $display("Test 4 passed! Expected: %b, Got: %b", 8'b00001110, result_tb);
        else
            $display("Test 4 failed! Expected: %b, Got: %b", 8'b00001110, result_tb);

        // Test 5: AND
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b00100; // AND
        #10;
        if (result_tb === 8'b10001000) 
            $display("Test 5 passed! Expected: %b, Got: %b", 8'b10001000, result_tb);
        else
            $display("Test 5 failed! Expected: %b, Got: %b", 8'b10001000, result_tb);

        // Test 6: OR
        A_tb = 8'b11001100;
        B_tb = 8'b11001101;
        opcode_tb = 5'b00101; // OR
        #10;
        if (result_tb === 8'b11101101) 
            $display("Test 6 passed! Expected: %b, Got: %b", 8'b11101101, result_tb);
        else
            $display("Test 6 failed! Expected: %b, Got: %b", 8'b11101101, result_tb);

        // Test 7: XOR
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b00110; // XOR
        #10;
        if (result_tb === 8'b01100110) 
            $display("Test 7 passed! Expected: %b, Got: %b", 8'b01100110, result_tb);
        else
            $display("Test 7 failed! Expected: %b, Got: %b", 8'b01100110, result_tb);

        // Test 8: XNOR
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b00111; // XNOR
        #10;
        if (result_tb === 8'b10011001) 
            $display("Test 8 passed! Expected: %b, Got: %b", 8'b10011001, result_tb);
        else
            $display("Test 8 failed! Expected: %b, Got: %b", 8'b10011001, result_tb);

        // Test 9: NAND
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b01000; // NAND
        #10;
        if (result_tb === 8'b01110111) 
            $display("Test 9 passed! Expected: %b, Got: %b", 8'b01110111, result_tb);
        else
            $display("Test 9 failed! Expected: %b, Got: %b", 8'b01110111, result_tb);

        // Test 10: NOR
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b01001; // NOR
        #10;
        if (result_tb === 8'b00010001) 
            $display("Test 10 passed! Expected: %b, Got: %b", 8'b00010001, result_tb);
        else
            $display("Test 10 failed! Expected: %b, Got: %b", 8'b00010001, result_tb);

        // Test 11: NOT
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b01010; // NOT
        #10;
        if (result_tb === 8'b00110011) 
            $display("Test 11 passed! Expected: %b, Got: %b", 8'b00110011, result_tb);
        else
            $display("Test 11 failed! Expected: %b, Got: %b", 8'b00110011, result_tb);

        // Test 12: SHIFT_L
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b01100; // SHIFT_L
        #10;
        if (result_tb === 8'b10011000) 
            $display("Test 12 passed! Expected: %b, Got: %b", 8'b10011000, result_tb);
        else
            $display("Test 12 failed! Expected: %b, Got: %b", 8'b10011000, result_tb);

        // Test 13: ROR
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b01101; // ROR
        #10;
        if (result_tb === 8'b00110011) 
            $display("Test 13 passed! Expected: %b, Got: %b", 8'b00110011, result_tb);
        else
            $display("Test 13 failed! Expected: %b, Got: %b", 8'b00110011, result_tb);

        // Test 14: ROL
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b01110; // ROL
        #10;
        if (result_tb === 8'b10011001) 
            $display("Test 14 passed! Expected: %b, Got: %b", 8'b10011001, result_tb);
        else
            $display("Test 14 failed! Expected: %b, Got: %b", 8'b10011001, result_tb);

        // Test 15: CMP
        A_tb = 8'b11001100;
        B_tb = 8'b10101010;
        opcode_tb = 5'b01111; // CMP
        #10;
        if (result_tb === 8'b11001100) 
            $display("Test 15 passed! Expected: %b, Got: %b", 8'b11001100, result_tb);
        else
            $display("Test 15 failed! Expected: %b, Got: %b", 8'b11001100, result_tb);

        // Fin du testbench
        $finish;
    end

endmodule
