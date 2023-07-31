package com.example.duxtennis.utils;

import com.example.duxtennis.models.Player;
import com.example.duxtennis.models.Tournament;

import java.util.ArrayList;

public class ScoreBoard {
    public void points(Player player1, Player player2, Integer pointsPlayer1, Integer pointsPlayer2){


        String point1 = point(pointsPlayer1);
        String point2 = point(pointsPlayer2);
        System.out.println();
        System.out.println("| " + player1.getName() + "  " + point1 + " --- " + point2 + "  " + player2.getName() + " |");
    }
    private String point(int points) {
        return switch (points) {
            case 0 -> "0";
            case 1 -> "15";
            case 2 -> "30";
            case 3 -> "40";
            default -> "AD";
        };
    }

    public void games(Player player1, Player player2, Integer setsPlayer1, Integer setsPlayer2, Integer gamesPlayer1, Integer gamesPlayer2){

        System.out.println();
        System.out.println(" ---------------------------------------- ");
        System.out.println("|------------ FINAL DEL GAME ------------|");
        System.out.println("|----------------------------------------|");
        System.out.println("|----------JUGADOR--GAMES--SET-----------|");
        System.out.println("|--------- " + player1.getName() + " -- " + gamesPlayer1 + " --- " + setsPlayer1 + " -----------|");
        System.out.println("|--------- " + player2.getName() + " -- " + gamesPlayer2 + " --- " + setsPlayer2 + " -----------|");
        System.out.println(" ---------------------------------------- ");
        System.out.println();
    }

    public void sets(Player player1, Player player2, Integer setsPlayer1, Integer setsPlayer2, Integer gamesPlayer1, Integer gamesPlayer2){
        System.out.println();
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println();
        System.out.println(" ++++++++++++++++++++++++++++++++++++++++");
        System.out.println("|------------ FINAL DEL SET -------------|");
        System.out.println("|----------------------------------------|");
        System.out.println("|----------JUGADOR--GAMES--SET-----------|");
        System.out.println("|--------- " + player1.getName() + " -- " + gamesPlayer1 + " --- " + setsPlayer1 + " -----------|");
        System.out.println("|--------- " + player2.getName() + " -- " + gamesPlayer2 + " --- " + setsPlayer2 + " -----------|");
        System.out.println(" ++++++++++++++++++++++++++++++++++++++++");
        System.out.println();
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println();
    }
    public void finalGame(Tournament tournament, Player player1, Player player2, Integer setsPlayer1, Integer setsPlayer2, ArrayList games1, ArrayList games2, Player winner){

        StringBuilder gamesPlayer1 = new StringBuilder();
        for (Object number : games1) {
            gamesPlayer1.append(number).append(" ");
        }
        StringBuilder gamesPlayer2 = new StringBuilder();
        for (Object number : games2) {
            gamesPlayer2.append(number).append(" ");
        }


        System.out.println("⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐");
        System.out.println(" --------- GANADOR DEL TORNEO ----------- ");
        System.out.println("|------------ " + tournament.getName() + " ----------------|");
        System.out.println("|------------- ¡ " + winner.getName() + " ! ---------------|");
        System.out.println("|------------------------------------------|");
        System.out.println("|-----------JUGADOR---GAMES---SET----------|");
        System.out.println("|-----------" + player1.getName()  + " -- " + gamesPlayer1 + "--- " + setsPlayer1 + " -------|");
        System.out.println("|-----------" + player2.getName()  + " -- " + gamesPlayer2 + "--- " + setsPlayer2 + " --------|");
        System.out.println(" ---------------------------------------- ");
        System.out.println("⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐");
        System.out.println();
    }

}
