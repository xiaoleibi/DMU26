import java.text.NumberFormat;
import java.util.Locale;
import java.util.Scanner;

public class MortageCal {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		scan.useLocale(Locale.forLanguageTag("da-DK"));
		NumberFormat danishCurrency = NumberFormat.getCurrencyInstance(Locale.forLanguageTag("da-DK"));

		System.out.print("How much do you want to borrow (DKK)? ");
		double principal = scan.nextDouble();

		System.out.print("How many years is the mortgage? ");
		int years = scan.nextInt();

		System.out.print("What is the annual interest rate (%)? ");
		double annualInterestRate = scan.nextDouble();

		int numberOfPayments = years * 12;
		double monthlyInterestRate = annualInterestRate / 100 / 12;
		double monthlyPayment;

		if (monthlyInterestRate == 0) {
			monthlyPayment = principal / numberOfPayments;
		} else {
			monthlyPayment = principal * monthlyInterestRate
					/ (1 - Math.pow(1 + monthlyInterestRate, -numberOfPayments));
		}

		System.out.println("Monthly payment: " + danishCurrency.format(monthlyPayment));
		System.out.println("Total repayment: "
                + danishCurrency.format(monthlyPayment * numberOfPayments));
                scan.close();
	}
}
