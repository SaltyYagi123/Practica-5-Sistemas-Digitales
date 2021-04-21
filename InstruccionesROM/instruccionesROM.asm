	li t6, 0x00000000 #Cargamos la direccion nula en t6 
	j main #Jump to main->
	
comp :  li t0, 1  #Le cargamos al t0 -> 1
	li t5, 15 #Le cargamos al t5 -> 15
	beq a0, a1, corr #Comparamos a1 y a0, que en este caso si que son iguales -> Por lo tanto pasamos a corr, si no lo fuera pasamos a inco 

inco :  sw t5,0(t6) #En el caso de que no sean iguales, almacenamos la 15 en la direccion de memoria
	j retu #Jump to retu 
	
corr : 	sw t0, 0(t6) #Metemos los contenidos de t0 <- 1 en la direccion de memoria t6 que metimos al principio

retu : 	addi t6, t6, 4 #A t6 -> le sumamos espacio para una palabra
	li t3, 6
	sw t3, 0(t6) 
 	ret #<- Esto sirve para guardar los resultados antes de actualizar el puntero
 	
 	 
main : 	addi a1, x0, 5 #Le asignamos a a1 y a a0 un valor de 5
	addi a0, x0, 5 
	jal comp #Jump and link to -> nos guarda el return address
	
	
#Comprobacion que el programa si que funciona 
	
	
