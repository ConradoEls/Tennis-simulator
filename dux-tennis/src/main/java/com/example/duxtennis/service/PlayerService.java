package com.example.duxtennis.service;

import com.example.duxtennis.dao.IDao;
import com.example.duxtennis.models.Player;

public class PlayerService {
    private IDao<Player> playerIDao;

    public PlayerService(IDao<Player> playerIDao) {
        this.playerIDao = playerIDao;
    }

    public Player createPlayer(String name, Integer winProb){
        return playerIDao.create(name,winProb);
    }
}
