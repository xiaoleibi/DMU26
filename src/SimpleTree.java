import javax.swing.*;
import java.awt.*;

public class SimpleTree extends JPanel {

    private int depth;

    public SimpleTree(int depth) {
        this.depth = depth;
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        drawBranch(g, getWidth() / 2, getHeight() - 50, -90, depth);
    }

    private void drawBranch(Graphics g, int x1, int y1, double angle, int depth) {
        if (depth == 0) {
            return;
        }

        int branchLength = depth * 10;
        int x2 = x1 + (int) (Math.cos(Math.toRadians(angle)) * branchLength);
        int y2 = y1 + (int) (Math.sin(Math.toRadians(angle)) * branchLength);

        g.drawLine(x1, y1, x2, y2);

        drawBranch(g, x2, y2, angle - 30, depth - 1);
        drawBranch(g, x2, y2, angle + 30, depth - 1);
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("Simple Recursive Tree");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 600);
        frame.add(new SimpleTree(10));
        frame.setVisible(true);
    }
}
