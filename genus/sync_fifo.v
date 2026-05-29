`timescale 1ns/1ps
module sync_fifo #(
    parameter DATA_WIDTH = 8, // each slot of 8 bits
    parameter DEPTH = 16,     //16 data packets
    parameter ADDR_WIDTH = 4 // 2^4 = 16 locations
)(
    input  wire                    clk,
    input  wire                    rst_n,    // Active low reset
    input  wire                    wr_en,    // Write enable
    input  wire                    rd_en,    // Read enable
    input  wire [DATA_WIDTH-1:0]   data_in,  // Data to write
    output reg  [DATA_WIDTH-1:0]   data_out, // Data to read
    output wire                    full,
    output wire                    empty
);

    // Internal Memory Array (16 rows of 8-bit registers)
    reg [DATA_WIDTH-1:0] fifo_ram [DEPTH-1:0];

    // Pointers and Counter
    reg [ADDR_WIDTH-1:0] w_ptr;  //points to next place where data will be written to
    reg [ADDR_WIDTH-1:0] r_ptr;  // points to next place where data will be read
    reg [ADDR_WIDTH:0]   count; // Extra bit to handle full capacity (0 to 16)

    // Assignments for Status Flags
    assign empty = (count == 0);
    assign full  = (count == DEPTH);

    // Write Action & Pointer Management
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            w_ptr <= 0;
        end else if (wr_en && !full) begin
            fifo_ram[w_ptr] <= data_in;
            w_ptr <= w_ptr + 1;
        end
    end

    // Read Action & Pointer Management
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            r_ptr    <= 0;
            data_out <= 0;
        end else if (rd_en && !empty) begin
            data_out <= fifo_ram[r_ptr];
            r_ptr    <= r_ptr + 1;
        end
    end

    // Counter Tracking Logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 0;
        end else begin
            case ({wr_en && !full, rd_en && !empty})
                2'b10: count <= count + 1; // Write only
                2'b01: count <= count - 1; // Read only
                // 2'b11 or 2'b00 means count stays the same
                default: count <= count; 
            endcase
        end
    end

endmodule
