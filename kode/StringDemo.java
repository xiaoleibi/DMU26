public class StringDemo {

    public static void main(String[] args) {

        // String variable declaration
        String word = "Hello";

        // Counting for loop
        System.out.println("Counting for loop:");

        for (int i = 0; i < word.length(); i++) {
            System.out.println(word.charAt(i));
        }

        // Enhanced for loop
        System.out.println("\nEnhanced for loop:");

        for (char charact : word.toCharArray()) {
            // Print each charact in the string for each iteration of the loop is a enhanced for loop
            //toCharArray() converts the String into an array of individual characters:
            System.out.println(charact);
        }
    }
}
