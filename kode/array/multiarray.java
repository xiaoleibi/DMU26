package array;

public class multiarray {

    public static void main(String[] args) {

        int[][] toArray = { { 3, 8, 3, 5, 1 },
                { 5, 2, 4, 7, 2 },
                { 6, 1, 4, 0, 9 } };

        for (int række = 0; række < toArray.length; række++) {
            for (int kolonne = 0; kolonne < toArray[række].length; kolonne++)
                System.out.print(toArray[række][kolonne] + " ");
            System.out.println();
        }
    }
}