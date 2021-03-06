/*
 * ALU
 *
 */

`ifndef PARAM
	`include "Parametros.v"
`endif
 
module ALU (
	input [4:0] iControl,
	input signed [31:0] iA, 
	input signed [31:0] iB,
	output reg oZero,
	output reg [31:0] oResult
	);

//	wire [4:0] iControl=OPXOR;

assign oZero = (oResult == ZERO);

wire [63:0] mul, mulu, mulsu;
assign mul = iA*iB;
assign mulu = $unsigned(iA)*$unsigned(iB);
assign mulsu= $unsigned(iA)*iB;

always @(*)
begin
    case (iControl)
		OPAND:
			oResult  = iA & iB;
		OPOR:
			oResult  = iA | iB;
		OPXOR:
			oResult  = iA ^ iB;
		OPADD:
			oResult  = iA + iB;
		OPSUB:
			oResult  = iA - iB;
		OPSLT:
			oResult  = iA < iB;
		OPSLTU:
			oResult  = $unsigned(iA) < $unsigned(iB);
		OPGE:
			oResult = iA >= iB;
		OPGEU:
			oResult  = $unsigned(iA) >= $unsigned(iB);
		OPSLL:
			oResult  = iB << iA[4:0];
		OPSRL:
			oResult  = iB >> iA[4:0];
		OPSRA:
			oResult  = iB >>> iA[4:0];
		OPLUI:
			oResult  = {iA[19:0],12'b0};
		OPMUL:
			oResult  = mul[31:0];
		OPMULH:
			oResult  = mul[63:32];
		OPMULHU:
			oResult  = mulu[63:32];
		OPMULHSU:
			oResult  = mulsu[63:32];	
		OPDIV:
			oResult  = iA / iB;
		OPDIVU:
			oResult  = $unsigned(iA) / $unsigned(iB);
		OPREM:
			oResult  = iA % iB;
		OPREMU:
			oResult  = $unsigned(iA) % $unsigned(iB);
		default:
			oResult  = ZERO;
    endcase
end

endmodule
