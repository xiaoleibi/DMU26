
import java.util.Scanner;

public class PyramidGiza {
	private static double readNumber(Scanner input, String prompt) {
		while (true) {
			System.out.print(prompt);
			if (input.hasNextDouble()) {
				return input.nextDouble();
			}
			System.out.println("Invalid input. Please enter a number.");
			input.next();
		}
	}

	//this function calculates the weight of the stones used to build the great pyramid of Giza
	//and validates the input to ensure that it is a number. It then calculates the total weight of the stones used to build the pyramid, as well as the weight per year, per day, and per minute. The results are displayed to the user in a formatted manner.

	public static void main(String[] args) {
		double NumberOfStones;
		double WeightOfStone;
		double NumberOfYearsToBuild;
		double TotalWeight;
		double WeightPerYear;
		double WeightPerDay;
		double WeightPerMinute;
		Scanner input = new Scanner(System.in);
		// Getting an estimate of the number of stones used
		NumberOfStones = readNumber(input, "Input the number of stones: ");
		// Getting an estaimte of the average weight of each stone
		WeightOfStone = readNumber(input, "Input the weight of each stone in Tons on average: ");
		// Getting the number of years taken to build the great pyramid
		NumberOfYearsToBuild = readNumber(input, "Input the number of years to build: ");
		TotalWeight = NumberOfStones * WeightOfStone;
		WeightPerYear = TotalWeight / NumberOfYearsToBuild;
		WeightPerDay = WeightPerYear / 365;
		WeightPerMinute = WeightPerDay / 24 / 60;
		System.out.println("The Weight (in tons) Per Year is: ");
		System.out.format("weightperyear : %.2f", WeightPerYear);
		System.out.println("  ");

		System.out.format("The Weight (in tons) Per Day is: %.2f%n", WeightPerDay);
		// Displaying the weight per minute formatted to 2 decimal places
		System.out.format("The Weight (in tons) Per Minute is: %.2f%n", WeightPerMinute);

	}
}