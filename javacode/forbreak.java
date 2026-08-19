public class forbreak {
    public static void main(String[] args) {
        int target = 11;
        int index;
        int[] vorTabel = { 5, 3, -2, 9, 0, -5, 10, 11, -7, 10 };
        for (index = 0; index < vorTabel.length; index++) {
            if (vorTabel[index] == target)
                break;
        }
        if (index < vorTabel.length)
            System.out.println(target + " er på position " + index);
        else
            System.out.println(target + " findes ikke");
    }
}
