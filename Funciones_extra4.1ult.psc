Funcion vjornada<-V_jornada(nombre_t Por Valor)
	Definir ndia,festivo,t_dia Como Caracter
	Definir cont,vdiurno,vnoct,feriado,f_hdiurno,f_noct,vjornada Como Real
	Definir dia,nhoras Como Entero	
	nhoras=0
	cont=0
	vdiurno=90
	vnoct=125
	f_hdiurno=0.10
	f_noct=0.15	
	Escribir "1 =  Lunes"
	Escribir "2 =  Martes"
	Escribir "3 =  Miercoles"
	Escribir "4 =  Jueves"
	Escribir "5 =  Viernes"
	Escribir "6 =  Sabado"
	Escribir "7 =  Domingo"	
	Escribir nombre_t," Ingrese el numero del dia laborado"	
	Leer dia	
	Hacer	
		Segun dia  Hacer			
			1:
				ndia <- 'Lunes'				
			2:			
				ndia <- 'Martes'				
			3:			
				ndia <- 'Miercoles'				
			4:			
				ndia <- 'Jueves'				
			5:				
				ndia <- 'Viernes'				
			6:				
				ndia <- 'Sabado'				
			7:				
				ndia <- 'Domingo'			
		FinSegun
	Mientras Que dia<1 O dia>7	
	Escribir "El dia ", ndia, " era feriado?" 
	Escribir " "	
	Escribir "Si o No"
	Leer festivo
	Hacer
		Si festivo="Si" Entonces
			Escribir nombre_t, ", la jornada laboral fue diurna o nocturna (diurna, nocturna)?"
			Leer t_dia
			Si t_dia="diurna" Entonces
				Escribir nombre_t,", ingrese el numero de horas diurna"
				Leer nhoras
				Escribir nombre_t,", el valor de la jornada es: ",(vdiurno*f_hdiurno+vdiurno)*nhoras  
			SiNo
				si t_dia="nocturna" Entonces
					Escribir nombre_t,", ingrese el numero de horas nocturnas"
					Leer nhoras
					Escribir nombre_t,", el valor de la nocturna es: ",(vnoct*f_noct+vnoct)*nhoras
				FinSi
			FinSi
		FinSi
		Si festivo="No" Entonces
			Escribir nombre_t,", la jornada laboral fue diurna o nocturna?"
			Leer t_dia
			Si t_dia="diurna" Entonces
				Escribir nombre_t,", ingrese el numero de horas diurna" 
				Leer nhoras
				Escribir nombre_t,". el valor de la jornada es: ",nhoras*vdiurno
			SiNo
				si t_dia="nocturna" Entonces
					Escribir nombre_t,", ingrese el numero de horas nocturnas"
					Leer nhoras
					Escribir nombre_t,", el valor de la jornada nocturna es: $",nhoras*vnoct
				FinSi
			FinSi		
		FinSi
	Mientras Que t_dia<>"diurna" Y t_dia<>"nocturna"
FinFuncion

Algoritmo sin_titulo
	Definir nombre_t Como Caracter
	Definir total Como Entero
	Escribir "Ingrese su nombre"
	Leer nombre_t
	Escribir " "
	total=V_jornada(nombre_t)	
	
FinAlgoritmo
