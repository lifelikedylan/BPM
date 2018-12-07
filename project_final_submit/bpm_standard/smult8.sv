module testbench();

   logic        clk;
   
   logic [7:0] 	mcand;
   logic [7:0] 	mplier;
   logic 	reset;   
   logic [15:0] q;

   integer 	 handle3;
   integer 	 desc3;   
   
   top dut (mcand, mplier, clk, reset, q);
      
   initial 
     begin	
	clk = 1'b0;
	forever #10 clk = ~clk;
     end
   
   initial
     begin
	handle3 = $fopen("smult.out");
	#800 $finish;		
     end
   
   always 
     begin
	desc3 = handle3;
	#5 $fdisplay(desc3, "%h %h | %b | %h", 
		     mplier, mcand, reset, q);
     end
   
   initial
     begin
	#0   reset = 1'b0;	
	#0   mcand = 8'hA0;
	#0   mplier = 8'hD4;
	
	#105 reset = 1'b1;
	#42  reset = 1'b0;
	
     end

endmodule // stimulus

module top (input [7:0] mcand, mplier,
	    input logic clk, reset,
	    output logic [15:0] q);

   logic 		       init, en;   

   fsm control (done, reset, init, en, ~clk);
   mult datapath (mcand, mplier, clk, init, en, q);

endmodule // top

module mult (input  logic [7:0] mcand, mplier, 
	     input logic clk, init, en,
	     output logic [15:0] q);

   logic [7:0] 			 mcand2, mcand3;   
   logic [7:0] 			 mcand4, mcand5;
   logic [15:0] 		 reg_in;
   logic 			 cout;   

   mux2 #(8)  mux1 (q[15:8], 8'h0, init, mcand2);
   mux2 #(8)  mux2 (q[7:0], mplier, init, mcand3);
   mux2 #(8)  mux3 (8'h0, mcand, q[0], mcand4);
   adder #(8) add1 (mcand2, mcand4, mcand5, cout);
   mux2 #(16)  mux4 ({cout, mcand5, mcand3[7:1]}, {8'h0, mcand3}, init, reg_in);   
   flop #(16) reg1 (en&clk, reg_in, q);   

endmodule // mult

module adder #(parameter WIDTH=8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y,
	       output logic cout);
             
  assign {cout, y} = a + b;
		    
endmodule // adder

module flopenr #(parameter WIDTH = 8)
                (input  logic             clk, reset, en,
                 input  logic [WIDTH-1:0] d, 
                 output logic [WIDTH-1:0] q);

  always_ff @(posedge clk, posedge reset)
    if (reset)   q <= 0;
    else if (en) q <= d;

endmodule // flopenr

module flopr #(parameter WIDTH = 8)
              (input  logic             clk, reset,
               input  logic [WIDTH-1:0] d, 
               output logic [WIDTH-1:0] q);

  always_ff @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else       q <= d;

endmodule // flopr

module flop #(parameter WIDTH = 8)
              (input  logic             clk, 
               input  logic [WIDTH-1:0] d, 
               output logic [WIDTH-1:0] q);

  always_ff @(posedge clk)
    q <= d;

endmodule // flopr

module mux2 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, 
              input  logic             s, 
              output logic [WIDTH-1:0] y);

  assign y = s ? d1 : d0; 

endmodule // mux2

module fsm (done, reset, init, en, clk);
   
   
   output  init;
   output  en;
   output  done;   
   input   clk;
   input   reset;

   reg 		done;
   reg 		init;
   reg 		en;		

   parameter [3:0] S0 = 4'd0,
     S1 = 4'd1,
     S2 = 4'd2,
     S3 = 4'd3,
     S4 = 4'd4,
     S5 = 4'd5,
     S6 = 4'd6,
     S7 = 4'd7,
     S8 = 4'd8;

   logic [3:0] CURRENT_STATE;
   logic [3:0] NEXT_STATE;

   always @(posedge clk)
     begin
	if (reset == 1'b1)	
	  CURRENT_STATE <=  S0;
	else
	  CURRENT_STATE <=  NEXT_STATE;
     end

   always @(CURRENT_STATE)
     begin
 	case(CURRENT_STATE)	  
	  S0:	
	      begin
		 init = 1'b1;		 
	         en = 1'b1;		 
		 done = 1'b0;
		 NEXT_STATE <=  S1;
	      end 		  
	  S1:	
	      begin
		 init = 1'b0;		 
	         en = 1'b1;
		 done = 1'b0;
		 NEXT_STATE <=  S2;
	      end 	
	  S2:	
	      begin
		 init = 1'b0;
                  en = 1'b1;
		 done = 1'b0;
		 NEXT_STATE <=  S3;
	      end 	

	  S3:	
	      begin
		 init = 1'b0;		 
	         en = 1'b1;		 
		 done = 1'b0;
		 NEXT_STATE <=  S4;
	      end	

	  S4:	
	      begin
		 init = 1'b0;		 
	         en = 1'b1;		 
		 done = 1'b0;
		 NEXT_STATE <=  S5;
	      end	

	  S5:	
	      begin
		 init = 1'b0;
                 en = 1'b1;
		 done = 1'b0;
		 NEXT_STATE <=  S6;
	      end	

	  S6:	
	      begin
		 init = 1'b0;
                 en = 1'b1;
		 done = 1'b0;
		 NEXT_STATE <=  S7;
	      end
	  S7:	
	      begin
		 init = 1'b0;
                 en = 1'b1; 
		 done = 1'b0;
		 NEXT_STATE <=  S8;
	      end	

	  S8:	
	      begin
		 init = 1'b0;		 
	         en = 1'b1;		 
		 done = 1'b1;//done
		 NEXT_STATE <=  S8;//loops s8
	      end
	  
	  default: 
	    begin
	       NEXT_STATE <=  S0;
	       init = 1'b1;	       
	       en = 1'b1;	       
	       done = 1'b0;	     
	    end
	  
	endcase // case (CURRENT_STATE)	
     end // always @ (CURRENT_STATE or X)   

endmodule // fsm