public class Fibonacci {
public static int fibonacci(int n) {
    if (n <= 1) {
        return n;
    }

    return fibonacci(n - 1) + fibonacci(n - 2);
}

public static void main(String[] args) {
    System.out.println(fibonacci(5));
}
//the program will print the 5th number in the Fibonacci sequence, which is 5.
//the recursive method will calculate the Fibonacci number by calling itself with the two previous numbers in the sequence until it reaches the base case of n <= 1.
}