package com.armory.domain;

import java.util.List;
import java.util.Map;

public class Guild {
    private Long lastModified;
    private String name;
    private String realm;
    private String battlegroup;
    private int level;
    private int side;
    private int achievementPoints;

    private Map<String, String> emblem;

    public Map<String, String> getEmblem() {
        return emblem;
    }

    public void setEmblem(final Map<String, String> emblem) {
        this.emblem = emblem;
    }

    public Long getLastModified() {
        return lastModified;
    }

    public void setLastModified(final Long lastModified) {
        this.lastModified = lastModified;
    }

    public String getName() {
        return name;
    }

    public void setName(final String name) {
        this.name = name;
    }

    public String getRealm() {
        return realm;
    }

    public void setRealm(final String realm) {
        this.realm = realm;
    }

    public String getBattlegroup() {
        return battlegroup;
    }

    public void setBattlegroup(final String battlegroup) {
        this.battlegroup = battlegroup;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(final int level) {
        this.level = level;
    }

    public int getSide() {
        return side;
    }

    public void setSide(final int side) {
        this.side = side;
    }

    public int getAchievementPoints() {
        return achievementPoints;
    }

    public void setAchievementPoints(final int achievementPoints) {
        this.achievementPoints = achievementPoints;
    }

    public List<Member> getMembers() {
        return members;
    }

    public void setMembers(final List<Member> members) {
        this.members = members;
    }

    private List<Member> members;

}
