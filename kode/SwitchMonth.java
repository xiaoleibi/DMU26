
import java.util.Scanner;

public class SwitchMonth {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a string: eg. Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec: ");
        String input = sc.nextLine();

        switch (input) {
            case "Jan":
                System.out.println("The month is 1");
                break;
            case "Feb":
                System.out.println("The month is 2");
                break;
            case "Mar":
                System.out.println("The month is 3");
                break;
            case "Apr":
                System.out.println("The month is 4");
                break;
            case "May":
                System.out.println("The month is 5");
                break;
            case "Jun":
                System.out.println("The month is 6");
                break;
            case "Jul":
                System.out.println("The month is 7");
                break;
            case "Aug":
                System.out.println("The month is 8");
                break;
            case "Sep":
                System.out.println("The month is 9");
                break;
            case "Oct":
                System.out.println("The month is 10");
                break;
            case "Nov":
                System.out.println("The month is 11");
                break;
            case "Dec":
                System.out.println("The month is 12");
                break;
            default:
                System.out.println("You chose another month!");
        }
      sc.close();
    }

}