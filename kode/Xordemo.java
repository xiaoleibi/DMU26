public class Xordemo {
    public static void main(String[] args) {
    boolean passwordCorrect = true;
    boolean pinCorrect = false;

if (passwordCorrect ^ pinCorrect) {
    System.out.println("Only one one authentication method is correct.");
}
else {
    System.out.println("Either both are correct or both are incorrect.");


}

}}