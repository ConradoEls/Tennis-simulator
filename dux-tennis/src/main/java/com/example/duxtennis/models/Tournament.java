package com.example.duxtennis.models;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Tournament {
    private String name;
    private Integer set;

    public Tournament(String name, Integer set) {
        this.name = name;
        this.set = set;
    }
}
