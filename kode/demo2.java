import java.util.Scanner;

public class demo2 {
    public static void main(String[] args) {

        String code;
        String correct = "1234";

        Scanner scan = new Scanner(System.in);

        try {
            System.out.print("Enter the code (4 digits): ");
            code = scan.next();

            // Check that the input contains exactly 4 digits
            if (!code.matches("\\d{4}")) {
                System.out.println(
                    code.length() != 4
                        ? "Must be exactly 4 digits"
                        : "Digits only, no letters"
                );
            } else {
                // Compare the entered code with the correct code
                if (code.equals(correct)) {
                    System.out.println("Correct");
                } else {
                    System.out.println("Wrong");
                }
            }

        } catch (Exception e) {
            System.out.println("Invalid input: " + e.getMessage());
        }

        scan.close();
    }
}