`timescale 1ns / 1ps

module Alu (
    input wire [7:0] A,
    input wire [7:0] B,
    input wire [4:0] opcode,
    output reg [7:0] result,
    output reg carry,
    output reg zero,
    output reg parity,
    output reg overflow,
    output reg borrow
);

// Table des opcodes
localparam ADD = 5'b00000,
           SUB = 5'b00001,
           INC = 5'b00010,
           DEC = 5'b00011,
           AND = 5'b00100,
           OR = 5'b00101,
           XOR = 5'b00110,
           XNOR = 5'b00111,
           NAND = 5'b01000,
           NOR = 5'b01001,
           NOT = 5'b01010,
           SHIFT_R = 5'b01011,
           SHIFT_L = 5'b01100,
           ROR = 5'b01101,
           ROL = 5'b01110,
           CMP = 5'b01111; // Ajoute un point-virgule ici

always @* begin
    case(opcode)
        ADD: begin
            result = A + B;
            carry = (result < A); // Vérifie le carry
        end
        SUB: begin
            result = A - B; // Corrige ici
            carry = (A < B); // Vérifie le borrow
        end
        INC: result = A + 1; // Incrémentation
        DEC: result = A - 1; // Décrémentation
        AND: result = A & B; // AND
        OR: result = A | B; // OR
        XOR: result = A ^ B; // XOR
        XNOR: result = ~(A ^ B); // XNOR
        NAND: result = ~(A & B); // NAND
        NOR: result = ~(A | B); // NOR
        NOT: result = ~A; // NOT
        SHIFT_R: result = A >> 1; // Décalage logique a droite
        SHIFT_L: result = A << 1; // Décalage a gauche
        ROR: result = {A[0], A[7:1]}; // Rotation a droite
        ROL: result = {A[6:0], A[7]}; // Rotation a gauche
        CMP: result = (A >= B) ? A : B; // Comparaison
        default: result = 8'b0; 
    endcase

    // Mise a jour des indicateurs
    zero = (result == 8'b00000000);
    parity = ^result; // Vérification de la parité
    overflow = (opcode == ADD || opcode == SUB) ? ((A[7] & B[7] & ~result[7]) | (~A[7] & ~B[7] & result[7])) : 0; 
    borrow = (opcode == SUB) ? (A < B) : 0; // Vérifie le borrow
end

endmodule
