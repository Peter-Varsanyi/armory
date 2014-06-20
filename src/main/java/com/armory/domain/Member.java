package com.armory.domain;

import java.util.Map;

public class Member {
    private Map<String, Object> character;
    private int rank;

    public Map<String, Object> getCharacter() {
        return character;
    }

    public void setCharacter(final Map<String, Object> character) {
        this.character = character;
    }

    @Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("Member [character=");
        builder.append(character);
        builder.append(", rank=");
        builder.append(rank);
        builder.append("]");
        return builder.toString();
    }

    public int getRank() {
        return rank;
    }

    public void setRank(final int rank) {
        this.rank = rank;
    }
}
