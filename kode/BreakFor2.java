public class BreakFor2 {
    public static void main(String[] args) {
         for (int i=1; i<=10; i++)
        for (int j=1; j<=10; j++)
          if (i*j == 42) {
            System.out.println(i + "*" + j + " = " + i*j);
            break;
          }
    }
    
}
// set a breakpoint on the line with the break statement and run the program in debug mode. When the breakpoint is hit, you can inspect the values of i and j to see which pair of numbers multiplies to 42.