import java.security.SecureRandom;

//SecureRandom is designed to make the generated values much harder to predict.
public class RandomNumber {

    public static void main(String[] args) {
        SecureRandom randomNumbers = new SecureRandom();

        for (int counter = 1; counter <= 20; counter++) {
            int face = 1 + randomNumbers.nextInt(6);

            System.out.printf("%d ", face);

            if (counter % 5 == 0) {
                System.out.println();
            }
        }
    }
}
