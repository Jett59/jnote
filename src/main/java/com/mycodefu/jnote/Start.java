package com.mycodefu.jnote;

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
