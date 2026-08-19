

import java.text.NumberFormat;

public class For4 {
   public static void main(String args[]) {

      float a = 8250325.12f;
      float b = 4321456.31f;
      float c = a + b;
      System.out.println(NumberFormat.getCurrencyInstance().format(c));
      // prints $12,571,782.00 (wrong)

   }
} // end class Interest