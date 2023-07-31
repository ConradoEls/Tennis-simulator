package com.example.duxtennis.models;

import com.example.duxtennis.dao.PlayerDAO;
import com.example.duxtennis.dao.TournamentDAO;
import com.example.duxtennis.service.PlayerService;
import com.example.duxtennis.service.TournamentService;
import com.example.duxtennis.utils.ScannerData;
import lombok.Getter;

@Getter
public class User {
    private String name;

    public User(String name) {
        this.name = name;
    }

    public void excecuteGame(){
        PlayerService ps = new PlayerService(new PlayerDAO());
        TournamentService ts = new TournamentService(new TournamentDAO());
        ScannerData scan = new ScannerData();
        System.out.println();
        String nameTournament = scan.sentence(getName() + ", ingresa un nombre para el torneo de tenis: ");
        String name1 = scan.sentence("Ingrese el nombre del jugador 1: ");
        String name2 = scan.sentence("Ingrese el nombre del jugador 2: ");
        Integer probPlayer1 = scan.prob("Excelente " + getName() + ", ahora ingresa la probabilidad de victoria de " + name1 + ", debe ser una probabilidad de 1 al 100% : ");
        Integer probPlayer2 = 100 - probPlayer1;

        Player player1 = ps.createPlayer(name1,probPlayer1);
        Player player2 = ps.createPlayer(name2,probPlayer2);
        System.out.println();
        System.out.println("Maravilloso... habemus duelo, " + getName() + "!    =>    " + name1 + " vs. " + name2 + ", se enfrentarán en el gran torneo " + nameTournament + "!");
        System.out.println();
        Integer set = scan.set(getName() + ", ingresa la cantidad de set que tendrá el partido, puede ser de 3 o 5 únicamente: ");
        System.out.println();

        Tournament tournament = ts.createTournament(nameTournament,set);
        String response;
        do {
            ts.startTournament(player1, player2, tournament);
            System.out.println();
            response = scan.sentence("Quieres simular nuevamente el partido?: (y/n) ");

        } while (response.equals("y"));
        scan.closeScan();
        System.out.println();
        System.out.println("Gracias por jugar " + getName() + "!");
    }
}
