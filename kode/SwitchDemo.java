public class SwitchDemo {
    


    public static void main(String[] args) {
    

        
    int day = 4;

    
    switch (day) {

        //The switch expression is evaluated once.
//The result is compared with each case value.
//If there is a match, the matching block of code runs.
//The break statement stops the switch after the matching case has run.
//The default statement runs if there is no match.
      case 1:
        System.out.println("Monday");
        break;
      case 2:
        System.out.println("Tuesday");
        break;
      case 3:
        System.out.println("Wednesday");
        break;
      case 4:
        System.out.println("Thursday");
        break;
      case 5:
        System.out.println("Friday");
        break;
      case 6:
        System.out.println("Saturday");
        break;
      case 7:
        System.out.println("Sunday");
        break;
    }
  }
}
