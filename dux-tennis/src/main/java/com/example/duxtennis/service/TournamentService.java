package com.example.duxtennis.service;

import com.example.duxtennis.dao.IDao;
import com.example.duxtennis.models.Player;
import com.example.duxtennis.models.Tournament;

public class TournamentService {
    private IDao<Tournament> tournamentIDao;

    public TournamentService(IDao<Tournament> tournamentIDao) {
        this.tournamentIDao = tournamentIDao;
    }

    public Tournament createTournament(String name, Integer set){
        return tournamentIDao.create(name,set);
    }

    public Player startTournament(Player player1, Player player2, Tournament tournament){
        return tournamentIDao.startGame(player1,player2,tournament);
    }
}
