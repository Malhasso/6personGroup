ORG 0:

Main:
	Main:
	LOADI	&H0003
	OUT		SRAM_ADHI_00
	LOADI	&HBEEF
	OUT		SRAM_DATA_EN
	
	LOADI	&H0006
	OUT		SRAM_ADHI_00
	LOADI	&HCAFE
	OUT		SRAM_DATA_EN
	
	LOADI	&H0003
	OUT 	SRAM_ADHI_00
	IN		SRAM_DATA_EN

	LOADI	&H0006
	OUT 	SRAM_ADHI_00
	IN		SRAM_DATA_EN

DataArray:
	DW 0

	SRAM_ADHI_00:	EQU	&H10;
	SRAM_ADHI_01:	EQU	&H11;
	SRAM_ADHI_10:	EQU	&H12;
	SRAM_ADHI_11:	EQU	&H13;
	SRAM_DATA_EN:	EQU	&H14;