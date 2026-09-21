import java.io.*;

//this program reads two integers from the user and prints the smaller of the two
//it is added a method to read an integer from the user and a method to find the minimum of two integers
//the method has a try catch block to handle invalid input and prompt the user to enter a valid integer

class MetodE7 {

  static int indlæsTal(String prompt) throws IOException {
    BufferedReader indlæser =
      new BufferedReader(
        new InputStreamReader(System.in)
      );

    while (true) {
      try {
        System.out.print(prompt + ": ");
        String input = indlæser.readLine().trim();

        return Integer.parseInt(input);
      } catch (NumberFormatException e) {
        System.out.println("Ugyldigt tal. Skriv kun et heltal.");
      }
    }
  }

  static int minimum(int tal1, int tal2) {
    return (tal1 < tal2) ? tal1 : tal2;
  }

  public static void main(String[] argv) throws IOException {
    int tal1 = indlæsTal("Indtast det første tal");
    int tal2 = indlæsTal("Indtast det andet tal");

    int mindst = minimum(tal1, tal2);

    System.out.println("Det mindste tal er: " + mindst);
  }
}