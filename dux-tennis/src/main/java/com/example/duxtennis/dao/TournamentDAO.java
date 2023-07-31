package com.example.duxtennis.dao;

import com.example.duxtennis.models.Player;
import com.example.duxtennis.models.Tournament;
import com.example.duxtennis.utils.ScoreBoard;

import java.util.ArrayList;
import java.util.Random;

public class TournamentDAO implements IDao<Tournament>{

    @Override
    public Tournament create(String name, Integer num) {
        return new Tournament(name,num);
    }

    @Override
    public Player startGame(Player player1, Player player2, Tournament tournament) {
        Random rd = new Random();
        ScoreBoard board = new ScoreBoard();
        int set = 0;
        int condition;
        Integer setsPlayer1 = 0;
        Integer setsPlayer2 = 0;
        if (tournament.getSet() == 5){
            condition = 3;
        }else {
            condition = 2;
        }
        ArrayList<Integer> games1 = new ArrayList<>();
        ArrayList<Integer> games2 = new ArrayList<>();
        String firstServe = player2.getName();
        while (set < condition) {
            while (setsPlayer1 <= set && setsPlayer2 <= set) {
                if(firstServe.equals(player1.getName())){
                    firstServe = player2.getName();
                }else {
                    firstServe = player1.getName();
                }
                Integer gamePlayer1 = 0;
                Integer gamePlayer2 = 0;
                while (gamePlayer1 < 6 && gamePlayer2 < 6) {
                    System.out.println();
                    System.out.println(" - " + firstServe + " tiene el saque: ");
                    int pointsPlayer1 = 0;
                    int pointsPlayer2 = 0;
                    while (pointsPlayer1 < 3 && pointsPlayer2 < 3) {
                        if (rd.nextInt(100) < player1.getWinProb()) {
                            pointsPlayer1++;
                        } else {
                            pointsPlayer2++;
                        }
                        board.points(player1, player2, pointsPlayer1, pointsPlayer2);
                    }
                    if (pointsPlayer1 > pointsPlayer2) {
                        gamePlayer1++;
                    } else {
                        gamePlayer2++;
                    }
                    board.games(player1, player2, setsPlayer1, setsPlayer2, gamePlayer1, gamePlayer2);
                }
                if (gamePlayer1 > gamePlayer2) {
                    setsPlayer1++;
                } else {
                    setsPlayer2++;
                }
                games1.add(gamePlayer1);
                games2.add(gamePlayer2);
                board.sets(player1, player2, setsPlayer1, setsPlayer2, gamePlayer1, gamePlayer2);
            }
            set++;
        }
        Player winner;
        if (setsPlayer1 > setsPlayer2){
            winner = player1;
        }else {
            winner = player2;
        }
        board.finalGame(tournament, player1, player2, setsPlayer1, setsPlayer2, games1, games2, winner);
        return winner;
    }
}
