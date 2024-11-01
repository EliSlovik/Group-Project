import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class ViralWaveGame extends JFrame {
    private boolean isWhiteScreen = false;

    public ViralWaveGame() {
        setUndecorated(true);  // Fullscreen without window decorations
        setExtendedState(JFrame.MAXIMIZED_BOTH);  // Maximize window to fullscreen
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // Add mouse listener to detect click
        addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                isWhiteScreen = true;  // Change screen color on click
                repaint();  // Refresh screen to apply color change
            }
        });
    }

    @Override
    public void paint(Graphics g) {
        super.paint(g);

        // Set background color based on click state
        if (isWhiteScreen) {
            g.setColor(Color.WHITE);  // White screen after click
        } else {
            g.setColor(Color.BLACK);  // Black screen initially
        }
        g.fillRect(0, 0, getWidth(), getHeight());  // Fill screen with color

        if (!isWhiteScreen) {
            // Draw welcome text in the center for the initial screen
            g.setColor(Color.WHITE);
            g.setFont(new Font("SansSerif", Font.BOLD, 48));
            FontMetrics fm = g.getFontMetrics();
            String welcomeText = "Welcome to Viral Wave!";
            String playText = "Click to play!";
            
            // Calculate positions to center the text
            int xWelcome = (getWidth() - fm.stringWidth(welcomeText)) / 2;
            int yWelcome = getHeight() / 2 - fm.getHeight();
            int xPlay = (getWidth() - fm.stringWidth(playText)) / 2;
            int yPlay = getHeight() / 2 + fm.getHeight();
            
            g.drawString(welcomeText, xWelcome, yWelcome);
            g.drawString(playText, xPlay, yPlay);
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            ViralWaveGame game = new ViralWaveGame();
            game.setVisible(true);
        });
    }
}
