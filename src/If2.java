package javap;

public class If2 {
 public static void main(String[] args) {
	int indtaegt=10000, udgift=7000, overskud, underskud;

	if ( indtaegt >= udgift ){
	  overskud = indtaegt - udgift;
	  System.out.println(
	    "Der er et overskud på " + overskud + " kr." );
	} else {
	  underskud = udgift - indtaegt;
	  System.out.println(
	    "Der er et underskud på " + underskud + " kr." );
	}
 }
}
