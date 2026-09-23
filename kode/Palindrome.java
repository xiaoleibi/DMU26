import java.util.Scanner;

public class Palindrome {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String text = scanner.nextLine();

        int low = 0;
        int high = text.length() - 1;
        //why high is set to text.length() - 1 is because the index of the last character in a string is always one less than the length of the string. In Java, string indices are zero-based, meaning that the first character has an index of 0, the second character has an index of 1, and so on. Therefore, to access the last character of the string, we need to subtract 1 from the length of the string.
        boolean isPalindrome = true;

        while (low < high) {
            if (text.charAt(low) != text.charAt(high)) {
                isPalindrome = false;
                break;
            }
            low++;
            high--;
        }

        if (isPalindrome) {
            System.out.println("\"" + text + "\" is a palindrome.");
        } else {
            System.out.println("\"" + text + "\" is not a palindrome.");
        }

        scanner.close();
    }
}