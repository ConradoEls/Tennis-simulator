package com.example.duxtennis;

import com.example.duxtennis.dao.PlayerDAO;
import com.example.duxtennis.dao.TournamentDAO;
import com.example.duxtennis.models.Player;
import com.example.duxtennis.models.Tournament;
import com.example.duxtennis.service.PlayerService;
import com.example.duxtennis.service.TournamentService;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
class DuxTennisApplicationTests {

	@Test
	public void createPlayerTest() {
		//Arrange
		PlayerService ps = new PlayerService(new PlayerDAO());
		//Act
		Player expected = ps.createPlayer("Prueba",50);
		//Assert
		assertEquals(50, expected.getWinProb());
	}
	@Test
	public void createTournamentTest() {
		//Arrange
		TournamentService ts = new TournamentService(new TournamentDAO());
		//Act
		Tournament expected = ts.createTournament("Prueba",5);
		//Assert
		assertEquals("Prueba", expected.getName());
	}
	@Test
	public void startTournamentTest() {
		//Arrange
		TournamentService ts = new TournamentService(new TournamentDAO());
		Player player1 = new Player("Prueba",98);
		Player player2 = new Player("Tecnica",02);
		Tournament tournament = new Tournament("prueba", 3);
		//Act
		Player expected = ts.startTournament(player1, player2, tournament);
		//Assert
		assertEquals(expected,player1);

	}
}
