package com.mycodefu.jnote;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Toolkit;

import javax.swing.*;

public class Start extends JPanel{
/**
	 * default uid
	 */
	private static final long serialVersionUID = 1L;

public static void main(String[] args) {
	Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
	Start window = new Start();
	JFrame frame = new JFrame("window");
	frame.setBounds(0, 0, screenSize.width, screenSize.height);
	frame.add(window);
	window.setBackground(Color.BLUE);
	frame.setDefaultCloseOperation(3);
	frame.setVisible(true);
}
}
