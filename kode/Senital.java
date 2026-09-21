import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Senital {
    
    public static void main(String[] args) throws Exception {

    BufferedReader indlæser =
  new BufferedReader(new InputStreamReader(System.in));
 
int sum=0;
int tal;
 
        do {
        System.out.println("Indtast tal: ");
        tal = Integer.parseInt(indlæser.readLine());
        sum += tal;
        } while (tal != 0);
        
        System.out.println("Summen er " + sum);
        }
}