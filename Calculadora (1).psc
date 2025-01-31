SubProceso suma<-operacionSumar(sumando1,sumando2)
	Definir suma como Real;
	suma<-sumando1+sumando2;
FinSubProceso

SubProceso diferencia<-operacionRestar(minuendo,sustraendo)
	Definir diferencia como Real;
	diferencia<-minuendo-sustraendo;
FinSubProceso

SubProceso producto<-operacionMultiplicar(factor1,factor2)
	Definir producto Como Real;
	producto<-factor1*factor2;
FinSubProceso

SubProceso cociente<-operacionDividir(dividendo,divisor)
	Definir cociente Como Real;
	cociente<-dividendo/divisor;
FinSubProceso

SubProceso resto<-operacionModulo(dividendo,divisor)
	Definir resto Como Real;
	resto<-dividendo MOD divisor;
FinSubProceso

SubProceso flag<-comprobacionCero(divisor)
	Definir flag Como Logico;
	Si divisor=0 Entonces
		flag<-Verdadero;
	SiNo
		flag<-Falso;
	FinSi
	
FinSubProceso

SubProceso potencia<-operacionPotencia(base,exponente)
	Definir potencia Como Real;
	potencia<- base ^ exponente;
FinSubProceso

SubProceso opcion<-menuEleccion
	Definir opcion Como Entero;
	Escribir "Elija una de las siguientes operaciones mediante el número asociado: ";
	Escribir "1. Sumar.";
	Escribir "2. Restar.";
	Escribir "3. Multiplicar.";
	Escribir "4. Dividir.";
	Escribir "5. Resto de una división.";
	Escribir "6. Potencia de dos números.";
	Leer opcion;
	
FinSubProceso

SubProceso operando<-lecturaOperando(nombreOperador)
	Definir operando Como Real;
	Escribir "Introduzca el ", nombreOperador , ":";
	Leer operando;
FinSubProceso


Proceso Principal
	Definir opcionMain Como entero;
	Definir operando1, operando2 Como Entero;
	Definir resultado Como Real;
	Definir operacionValida Como Logico;
	operacionValida<-Falso;
	
	Repetir
		opcionMain<-menuEleccion;
		Segun opcionMain Hacer
			1:
				operando1<-lecturaOperando("primer sumando");
				operando2<-lecturaOperando("segundo sumando");
				resultado<-operacionSumar(operando1,operando2);
				operacionValida<-Verdadero;
				
			2:
				resultado<-operacionRestar(lecturaOperando("minuendo"),lecturaOperando("sustraendo"));				
				operacionValida<-Verdadero;
				
			3:
				resultado<-operacionMultiplicar(lecturaOperando("primer factor"),lecturaOperando("segundo factor"));				
				operacionValida<-Verdadero;
				
			4:
				Repetir
					operando2<-lecturaOperando("Divisor");
					Si comprobacionCero(operando2) Entonces
						Escribir "Debe introducir un diferente de 0.";
					FinSi
				Hasta Que NO comprobacionCero(operando2)
				resultado<-operacionDividir(lecturaOperando("Dividendo"),operando2);								
				operacionValida<-Verdadero;

			5:
				Repetir
					operando2<-lecturaOperando("Divisor");
					Si comprobacionCero(operando2) Entonces
						Escribir "Debe introducir un diferente de 0.";
					FinSi
				Hasta Que NO comprobacionCero(operando2)
				resultado<-operacionModulo(lecturaOperando("Dividendo"),operando2);								
				operacionValida<-Verdadero;

			6:
				resultado<-operacionPotencia(lecturaOperando("base"),lecturaOperando("exponente"));				
				operacionValida<-Verdadero;
				
			De Otro Modo:
				Escribir "Opción no válida. Repitiendo proceso de elección";
		FinSegun
	Hasta Que operacionValida
	
	Escribir "El resultado de la operación es: " , resultado;
	
FinProceso
