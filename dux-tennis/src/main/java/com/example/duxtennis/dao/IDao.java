package com.example.duxtennis.dao;

import com.example.duxtennis.models.Player;
import com.example.duxtennis.models.Tournament;

public interface IDao <T>{


    T create(String name, Integer num);
    Player startGame(Player player1, Player player2, Tournament tournament);

}
