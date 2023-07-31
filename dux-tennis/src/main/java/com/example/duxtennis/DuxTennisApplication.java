package com.example.duxtennis;

import com.example.duxtennis.models.User;
import com.example.duxtennis.utils.ScannerData;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DuxTennisApplication {

	public static void main(String[] args) {
		SpringApplication.run(DuxTennisApplication.class, args);
		ScannerData scan = new ScannerData();
		System.out.println();
		String userName = scan.sentence("¡Te damos la bienvenida! - Coloca tu nombre a continuación para iniciar la simulación: ");
		User user = new User(userName);
		user.excecuteGame();
	}
}
