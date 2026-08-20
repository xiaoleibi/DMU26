public class Calculator {

    public static int add(int a, int b) {
        return a + b;
    }

    public static int multiply(int x, int y) {
        return x * y;
    }

    public static void main(String[] args) {
        int sum = add(5, 7);
        int product = multiply(3, 4);

        System.out.println("Sum: " + sum);
        System.out.println("Product: " + product);
    }
}
