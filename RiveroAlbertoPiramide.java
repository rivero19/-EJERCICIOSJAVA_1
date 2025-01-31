package paquete;
import java.util.Scanner;

public class helloworld {

 public static void main(String[] args) {
	 
	 Scanner scanner = new Scanner(System.in);
	 System.out.print("Introduce un número: ");
	 int pedirNumero = scanner.nextInt();
	 		
		 for(int i = 1; i <= pedirNumero ; i++ ) {
			 
			 for (int o = 1; o <= pedirNumero - i++;) {
	             System.out.print("_");
	         };
	
	         for (int o = 1; o <= i; o++) {
	             System.out.print("*");
	             
	             if (o < i){
	                 System.out.print("_");
	             }
	         };
	         System.out.println();
		 };
	 }
	 
 } 