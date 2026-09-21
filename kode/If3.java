
public class If3 {

	public static void main(String[] args) {

		int indtaegt = 20000, udgift = 36000, overskud, underskud;

		if (indtaegt > udgift) {
			overskud = indtaegt - udgift;
			System.out.println("Der er et overskud på " + overskud + " kr.");
		} else if (indtaegt < udgift) {
			underskud = udgift - indtaegt;
			System.out.println("Der er et underskud på " + underskud + " kr.");
		} else
			System.out.println("Det kunne være det samme!");
	}

}
