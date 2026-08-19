import java.util.Scanner;

public class Echo {
    // -----------------------------------------------------------------
    // Reads a character string from the user and prints it.
    // -----------------------------------------------------------------
    public static void main(String[] args) {
        String message;
        Scanner scan = new Scanner(System.in);

        System.out.println("Enter a line of text:");
        // message = scan.next(); next() reads only the first word of input as a token, so we use nextLine() instead to read the entire line of input.

        message = scan.nextLine();

        System.out.println("You entered: \"" + message + "\"");
        scan.close(); // close Scanner
    }
}
