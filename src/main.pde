// import javax.swing.*;

// public class Main {
//     public static void main(String[] args) {
//         // using swing JFRAME to set up the Window, Jframe is the whole window;
//         JFrame Screen = new JFrame("start screen");
//         Screen.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
//         Screen.setSize(1920, 1080);
//         // JPANEL, Panel is sort of like a slideshow slide, set the layout to null to be able to set the position of buttons and suck by x and y coords;
//         JPanel startScreen = new JPanel();
//         startScreen.setLayout(null);
//         // JButton
//         JButton play = new JButton("Play!");
//         // setting where the button will be, it goes x, y, width, height. make sure to adjust the positoning of the button based on its size;
//         play.setBounds(1920/2 - 50, 1080/2 - 50, 100, 100);
//         // ActionListeners this basically just shows when the buttons is pressed, a window saying it was, have no clue what it really is for
//         play.addActionListener(e -> JOptionPane.showMessageDialog(Screen, "Play Clicked"));
//         // adding the button panel.add(button);
//         startScreen.add(play);
//         // adding the startScreen "slide" or panel to the window;
//         Screen.add(startScreen);
//         // making window visible;
//         Screen.setVisible(true);
        

//     }

// }
