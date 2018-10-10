all:
	iverilog testebench.v -o codificador.vvp -Wall

run:
	vvp codificador.vvp

wave:
	gtkwave codificador.vcd

del:
	rm codificador.vcd && rm codificador.vcd
