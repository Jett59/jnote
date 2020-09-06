package com.mycodefu.jnote;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Toolkit;

import javax.swing.*;

import javafx.application.Application;
import javafx.stage.Stage;

public class Start extends Application{
	public static void main(String[] args) {
		Application.launch(args);
	}

	@Override
	public void start(Stage stage) throws Exception {
		stage.setFullScreen(true);
		stage.setTitle("window");
		stage.show();
	}
}
