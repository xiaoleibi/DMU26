package array;
    import java.util.ArrayList;
public class ArrayListDemo {


 

    public static void main(String[] args) {

        // Create an ArrayList of Strings
        ArrayList<String> fruits = new ArrayList<>();

        // Add elements
        fruits.add("Apple");          // Add at the end
        fruits.add("Banana");
        fruits.add("Orange");
        fruits.add(1, "Mango");       // Add at specific index

        System.out.println("Fruits: " + fruits);

        // Access an element
        String firstFruit = fruits.get(0);
        System.out.println("First fruit: " + firstFruit);

        // Remove an element by value
        fruits.remove("Banana");
        System.out.println("After removing Banana: " + fruits);

        // Remove an element by index
        fruits.remove(1);             // Removes Mango
        System.out.println("After removing index 1: " + fruits);

        // Get the size
        System.out.println("Number of fruits: " + fruits.size());

        // Check if ArrayList contains an element
        if (fruits.contains("Orange")) {
            System.out.println("Orange is in the list!");
        }

        // Loop through ArrayList
        fruits.forEach(System.out::println);
    }
}
 
