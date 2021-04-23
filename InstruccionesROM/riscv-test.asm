#####################################################
#			RISC-V
#	Código de prueba de funciones
#	con mensjes de error
#
#	-    Claudia Blanco y Jorge González   -
#####################################################

# **************************************************
# PRUEBA DE ADDI Y REGISTROS
# **************************************************

# Esta prueba hay que realizarla manualmente, si no funciona ADDI o 
# los registros, el programa no será capaz de mostrar los errores

# Comprobar en ModelSim que t1 (x6) y t2 (x7) 
# tienen un valor de 1 y -1 respectivamente.

addi t1, zero, 1
addi t2, zero, -1

# **************************************************
# PRUEBA DE JAL Y JALR
# **************************************************

jal PruebaJal
addi x12, zero, -100
PruebaJal: addi x13, zero, 100

jalr ra, 16
addi x14, zero, -200
addi x15, zero, 200

# **************************************************
# PRUEBA DE BRANCH
# **************************************************
addi t1, zero, 2
addi t2, zero, 2

beq t1, t2, Condicion1
addi x10, zero, -1
jal Error
Condicion1: addi x11, zero, 1

addi t1, zero, 1
blt t1, t2, Condicion2
addi x10, zero, -2
jal Error
Condicion2: addi x11, zero, 2

bge t2, t1, Condicion3
addi x10, zero, -3
jal Error
Condicion3: addi x11, zero, 3

bne t2, t1, Condicion4
addi x10, zero, -4
jal Error
Condicion4: addi x11, zero, 4

addi t1, zero, -100
bltu t2, t1, Condicion5
addi x10, zero, -5
jal Error
Condicion5: addi x11, zero, 5

bgeu t1, t2, Condicion6
addi x10, zero, -6
jal Error
Condicion6: addi x11, zero, 6

# **************************************************
# PRUEBA DE ARITMIMÉICAS CON INMEDIATOS
# **************************************************
addi t1, zero, 2

addi t4, zero, 1
slti t2, t1, 10
beq t4, t2, AritIm1
addi x10, zero, -7
jal Error
AritIm1: addi x11, zero, 7

addi t4, zero, 0
addi t1, zero, -100
sltiu t2, t1, 10
beq t4, t2, AritIm2
addi x10, zero, -8
jal Error
AritIm2: addi x11, zero, 8

addi t1, zero, 6
addi t4, zero, 4
xori t2, t1, 2
beq t4, t2, AritIm3
addi x10, zero, -9
jal Error
AritIm3: addi x11, zero, 9

addi t4, zero, 6
ori t2, t1, 2
beq t4, t2, AritIm4
addi x10, zero, -10
jal Error
AritIm4: addi x11, zero, 10

addi t4, zero, 2
andi t2, t1, 2
beq t4, t2, AritIm5
addi x10, zero, -11
jal Error
AritIm5: addi x11, zero, 11

addi t1, zero, 2
addi t4, zero, 4
slli t2, t1, 1
beq t4, t2, AritIm6
addi x10, zero, -12
jal Error
AritIm6: addi x11, zero, 12

addi t1, zero, -1
addi t4, zero, 0x7FF
srli t2, t1, 21
beq t4, t2, AritIm7
addi x10, zero, -13
jal Error
AritIm7: addi x11, zero, 13

addi t4, zero, -1
srai t2, t1, 21
beq t4, t2, AritIm8
addi x10, zero, -14
jal Error
AritIm8: addi x11, zero, 14

# **************************************************
# PRUEBA DE ARITMÉTICAS
# **************************************************

# Solo tenemos que comprobar que las operaciones
# aritméticas funcionen con registros (la ALU ya la hemos probado
# con los inmediatos) y la funcion SUB

addi t1, zero, 5
addi t2, zero, 3
addi t4, zero, 2
sub t3, t1, t2
beq t4, t3, Arit1
addi x10, zero, -15
jal Error
Arit1: addi x11, zero, 15

# **************************************************
# PRUEBA DE LA RAM
# **************************************************

addi t1, zero, -1
addi t2, zero, 0xF

# No es posible detectar errores en sw, sh y sb desde aquí,
# mirar en ModelSim en el primer bloque de RAM si están estos
# valores
sw t1, 4(sp)
sh t1, 8(sp)
sb t1, 12(sp)

lw t2, 4(sp)
addi t4, zero, -1
beq t4, t2, Ram1
addi x10, zero, -16
jal Error
Ram1: addi x11, zero, 16

lh t2, 8(sp)
beq t4, t2, Ram2
addi x10, zero, -17
jal Error
Ram2: addi x11, zero, 17

lb t2, 12(sp)
addi t4, zero, -1
beq t4, t2, Ram3
addi x10, zero, -18
jal Error
Ram3: addi x11, zero, 18

lhu t2, 8(sp)
addi t4, zero, 0x7FF
srli t2, t2, 5 # No hemos probado lui todavía, esto nos permite la comparación
beq t4, t2, Ram4
addi x10, zero, -19
jal Error
Ram4: addi x11, zero, 19

lbu t2, 12(sp)
addi t4, zero, 0xF
srli t2, t2, 4
beq t4, t2, Ram5
addi x10, zero, -20
jal Error
Ram5: addi x11, zero, 20

# **************************************************
# PRUEBA DE LUI y AUIPC
# **************************************************
lui t1, 0x001
addi t2, t1, 0xFFFFFF11
addi t4, zero, 0xF1
srli t2, t2, 4
beq t4, t2, Lui1
addi x10, zero, -21
jal Error
Lui1: addi x11, zero, 21

auipc t1, 1
auipc t2, 0
addi t2, t2, -4
lui t3, 1
add t2, t2, t3
beq t1, t2, Auipc1
addi x10, zero, -22
jal Error
Auipc1: addi x11, zero, 22

addi x9, zero, 1
jal End
# Si el registro x9 tiene un valor de -1, ha ocurrido un error durante el programa
# Analizar el registro x10 para ver cual lo ha orginado.
Error: addi x8, zero, -1
End: 