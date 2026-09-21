public class Review {
    public static void main(String[] args) {

        // Correct boolean statements
        boolean statement1 = 1 == 1;  // Equality check
        boolean statement2 = 1 > 3;   // Greater-than check

        // Check both statements using if-else
        if (statement2 && statement1) {
            // short-circuiting statement2
            System.out.println("Both statements are true");
        } else {
            System.out.println("At least one statement is false");
        }
    }
}