package com.example.duxtennis.dao;

import com.example.duxtennis.models.Player;
import com.example.duxtennis.models.Tournament;


public class PlayerDAO implements IDao <Player> {

    @Override
    public Player create(String name, Integer num) {
        return new Player(name, num);
    }

    @Override
    public Player startGame(Player player1, Player player2, Tournament tournament) {
        return null;
    }

}
