public class LogialOp {
   public static void main(String[] args) {
      // create truth table for && (conditional AND) operator

      // right click and highlight the lines to make a format check


      System.out.printf("%s%n%s: %b%n%s: %b%n%s: %b%n%s: %b%n%n",
            "Conditional AND (&&)", "false && false", (false && false),
            "false && true", (false && true),
            "true && false", (true && false),
            "true && true", (true && true));

      // format "%s%n%s: %b%n%s: %b%n%s: %b%n%s: %b%n%n", which means print a string,
      // then a new line, then a string, then a boolean, etc. %s is for string, %b is
      // for boolean, %n is for new line.

      // create truth table for || (conditional OR) operator

      //the yellow highlighted line below is  where a shortcut was used  
      System.out.printf("%s%n%s: %b%n%s: %b%n%s: %b%n%s: %b%n%n",
            "Conditional OR (||)", "false || false", (false || false),
            "false || true", (false || true),
            "true || false", (true || false),
            "true || true", (true || true));
   }
}