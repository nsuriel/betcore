Algoritmo loteria
	Definir apuesta Como Entero
	Definir monto Como Real
	Definir ganador Como Entero;
	Definir saldo_inicial Como Real;
	Definir saldo Como Real;
	Definir opt Como Caracter;
	
	opt=s;
	saldo_inicial=100;
	saldo=saldo_inicial;
	Imprimir "Creado por Nathali Rosa Suriel";
	Imprimir "21-SIIN-1-132";
	Imprimir "";
	
	Imprimir  "Bievenido a BetCore. Su balance es ",saldo_inicial;
	Imprimir "";
	Hacer 
		Repetir 
			Imprimir "Elija el número de su apuesta";
			Leer apuesta;
		Hasta Que apuesta>0 y apuesta<=25
		
		Repetir
			Si monto>saldo
				Imprimir "Ingrese un monto menor o igual que ",saldo;
			SiNo
				Imprimir "¿Cuánto desea apostar?"
			FinSi
			Leer monto;
		Hasta Que monto>0 y monto<=saldo; 
		
		saldo=saldo-monto;
		ganador=Azar(25);
		
		Si apuesta=ganador
			saldo=saldo+(monto*1.5)
			Imprimir "Número ganador. Se han sumado ", monto*1.5, " a su saldo";
			Imprimir "Su saldo actual es igual a ",saldo;
			Imprimir "¿Desea continuar? S/N";
			Leer opt;
		SiNo
			Imprimir "El número ganador es ",ganador, ". No ha tenido suerte";
			Imprimir "Su saldo actual es igual a ",saldo;
			Imprimir "¿Desea reintentar? S/N";
			Leer opt;
		FinSi
		
	Hasta Que Minusculas(opt)<>"s" o saldo<=0
	
	Imprimir "Gracias por jugar con nosotros";
	Si saldo>saldo_inicial 
		Imprimir "Ha ganado ",saldo-saldo_inicial, " jugando con nosotros";
	FinSi
	
	Imprimir "Su saldo final es de ",saldo;
	
	
	
FinAlgoritmo
