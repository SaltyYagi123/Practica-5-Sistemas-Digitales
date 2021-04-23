transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/SumadorRestador.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/Sumador1Bit.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/ROM.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/Registro_Gen.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/RAM.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/InmGen.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/CircuitoControl.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/BancoReg.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/ALU.vhd}
vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/Practica5.vhd}

vcom -93 -work work {C:/Users/ytobi/OneDrive/Escritorio/Practica-5-Sistemas-Digitales-/simulation/modelsim/Practica5.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Practica5_vhd_tst

add wave *
view structure
view signals
run -all
