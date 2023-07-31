package com.example.duxtennis.models;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Player {
    private String name;
    private Integer winProb;

    public Player(String name, Integer winProb) {
        this.name = name;
        this.winProb = winProb;
    }
}
