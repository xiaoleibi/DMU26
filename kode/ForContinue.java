public class ForContinue {

  public static void main(String[] args) {
    int sum = 0;
    int[] vorTabel = { 5, 3, -2, 9, 0, -5, 10, 11, -7, 10 };

    for (int index = 0; index < vorTabel.length; index++) {
      if (vorTabel[index] >= 0)
        continue;

      // In this code, continue skips the rest of the current loop iteration and moves
      // to the next array element.
      System.out.print(vorTabel[index] + " ");
      sum += vorTabel[index];
    }

    System.out.println("Summen er " + sum);

  }
}