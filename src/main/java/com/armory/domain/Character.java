package com.armory.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Character {
    private int bestItemLevel;
    private int currentItemLevel;
    private final String name;
    private final Map<String, String> stats = new HashMap<>();
    private final List<String> errors = new ArrayList<>();

    public Character(final String name) {
        this.name = name;
    }

    public void addError(final String error) {
        errors.add(error);
    }

    public String getName() {
        return name;
    }

    public List<String> getErrors() {
        return errors;
    }

    public void addStat(final String stat, final String value) {
        stats.put(stat, value);
    }

    public int getBestItemLevel() {
        return bestItemLevel;
    }

    public void setBestItemLevel(final int bestItemLevel) {
        this.bestItemLevel = bestItemLevel;
    }

    @Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("Character [bestItemLevel=");
        builder.append(bestItemLevel);
        builder.append(", currentItemLevel=");
        builder.append(currentItemLevel);
        builder.append(", stats=");
        builder.append(stats);
        builder.append(", errors=");
        builder.append(errors);
        builder.append("]");
        return builder.toString();
    }

    public int getCurrentItemLevel() {
        return currentItemLevel;
    }

    public void setCurrentItemLevel(final int currentItemLevel) {
        this.currentItemLevel = currentItemLevel;
    }

    public Map<String, String> getStats() {
        return stats;
    }

}
