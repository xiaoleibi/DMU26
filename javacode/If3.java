
public class If3 {

	public static void main(String[] args) {

		int indtaegt = 10000, udgift = 7000, overskud, underskud;

		if (indtaegt > udgift) {
			overskud = indtaegt - udgift;
			System.out.println("Der er et overskud p� " + overskud + " kr.");
		} else if (indtaegt < udgift) {
			underskud = udgift - indtaegt;
			System.out.println("Der er et underskud p� " + underskud + " kr.");
		} else
			System.out.println("Det kunne v�re det samme!");
	}

}
