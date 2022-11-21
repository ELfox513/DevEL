package com.prineside.tdi2;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import p168r4.C6226s;
@REGS
/* loaded from: classes2.dex */
public class MapPrestigeConfig implements KryoSerializable {
    public static final int BASE_BONUS = 50;
    public static final int MAX_DIFFICULTY_BONUS = 50;
    public static final int NO_ABILITIES_BONUS = 10;
    public static final int NO_BOUNTY_MOD_BONUS = 20;
    public static final int NO_MINERS_BONUS = 20;
    public static final int NO_RESEARCH_BONUS = 40;
    public static final int WALKABLE_PLATFORMS_BONUS = 10;
    public int averageDifficulty;
    public double mapPrice;
    public boolean noAbilities;
    public boolean noBounty;
    public boolean noMiners;
    public boolean noResearch;
    public long score;
    public String userMapId;
    public boolean walkablePlatforms;

    public MapPrestigeConfig() {
    }

    public int getCrownsCount() {
        int totalBonus = getTotalBonus();
        if (totalBonus < 40) {
            return 1;
        }
        if (totalBonus < 80) {
            return 2;
        }
        if (totalBonus < 120) {
            return 3;
        }
        return totalBonus < 160 ? 4 : 5;
    }

    public int getDifficultyBonus() {
        int i = this.averageDifficulty;
        if (i <= 100) {
            return 0;
        }
        if (i < 170) {
            return 10;
        }
        if (i < 250) {
            return 20;
        }
        if (i < 350) {
            return 30;
        }
        return i < 450 ? 40 : 50;
    }

    public int getFinalPrestigeTokens() {
        double d = this.mapPrice;
        double totalBonus = getTotalBonus();
        Double.isNaN(totalBonus);
        return MathUtils.floor(((float) (d * totalBonus * 0.01d)) + ((float) this.mapPrice));
    }

    public int getMaxPrestigeScore() {
        return getMaxPrestigeScore(this.averageDifficulty, this.noResearch);
    }

    public double getScoreMultiplier() {
        double d = this.score;
        double maxPrestigeScore = getMaxPrestigeScore();
        Double.isNaN(d);
        Double.isNaN(maxPrestigeScore);
        double d2 = d / maxPrestigeScore;
        if (d2 > 1.0d) {
            return 1.0d;
        }
        return d2;
    }

    public static MapPrestigeConfig fromJson(JsonValue jsonValue) {
        return new MapPrestigeConfig(jsonValue.getString("umi"), jsonValue.getInt("mp"), jsonValue.getInt("ad"), jsonValue.getBoolean("na"), jsonValue.getBoolean("nr"), jsonValue.getBoolean("wp"), jsonValue.getBoolean("nb"), jsonValue.getBoolean("nm"), jsonValue.getInt(C6226s.f31189J));
    }

    public static int getMaxPrestigeScore(int i, boolean z) {
        int i2 = 400000;
        if (z) {
            int pow = (int) (((31800.0d / StrictMath.pow(i, 1.1d)) - 30.15d) * 1000.0d);
            if (pow < 4000) {
                pow = 4000;
            }
            if (pow <= 400000) {
                i2 = pow;
            }
        } else {
            int pow2 = (int) (((12000.0d / StrictMath.pow(i - 11, 0.4d)) - 807.0d) * 1000.0d);
            i2 = pow2 < 150000 ? 150000 : pow2;
            if (i2 > 3000000) {
                i2 = 3000000;
            }
        }
        if (i2 > 1000000) {
            double d = i2;
            Double.isNaN(d);
            return ((int) StrictMath.round(d / 100000.0d)) * 100000;
        } else if (i2 > 100000) {
            double d2 = i2;
            Double.isNaN(d2);
            return ((int) StrictMath.round(d2 / 10000.0d)) * 10000;
        } else if (i2 > 10000) {
            double d3 = i2;
            Double.isNaN(d3);
            return ((int) StrictMath.round(d3 / 1000.0d)) * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
        } else {
            double d4 = i2;
            Double.isNaN(d4);
            return ((int) StrictMath.round(d4 / 100.0d)) * 100;
        }
    }

    public String describe() {
        return "  Crowns: " + getCrownsCount() + "\n  Score multiplier: " + getScoreMultiplier() + " (" + ((Object) StringFormatter.commaSeparatedNumber(this.score)) + " / " + ((Object) StringFormatter.commaSeparatedNumber(getMaxPrestigeScore())) + ")\n  Difficulty bonus: " + getDifficultyBonus() + " (" + this.averageDifficulty + "%)\n  Map price: " + this.mapPrice + "P, no abilities: " + this.noAbilities + ", no research: " + this.noResearch + ", walkable platforms: " + this.walkablePlatforms + ", no bounty: " + this.noBounty + ", no miners: " + this.noMiners + "\n  Final bonus: " + getTotalBonus() + "%\n  Final Prestige tokens price: " + getFinalPrestigeTokens() + "\n";
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.userMapId = (String) kryo.readObjectOrNull(input, String.class);
        this.mapPrice = input.readDouble();
        this.averageDifficulty = input.readVarInt(true);
        this.noAbilities = input.readBoolean();
        this.noResearch = input.readBoolean();
        this.walkablePlatforms = input.readBoolean();
        this.noBounty = input.readBoolean();
        this.noMiners = input.readBoolean();
        this.score = input.readVarLong(true);
    }

    public void toJson(Json json) {
        json.writeValue(C6226s.f31189J, Long.valueOf(this.score));
        json.writeValue("umi", this.userMapId);
        json.writeValue("mp", Double.valueOf(this.mapPrice));
        json.writeValue("ad", Integer.valueOf(this.averageDifficulty));
        json.writeValue("na", Boolean.valueOf(this.noAbilities));
        json.writeValue("nr", Boolean.valueOf(this.noResearch));
        json.writeValue("wp", Boolean.valueOf(this.walkablePlatforms));
        json.writeValue("nb", Boolean.valueOf(this.noBounty));
        json.writeValue("nm", Boolean.valueOf(this.noMiners));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.userMapId, String.class);
        output.writeDouble(this.mapPrice);
        output.writeVarInt(this.averageDifficulty, true);
        output.writeBoolean(this.noAbilities);
        output.writeBoolean(this.noResearch);
        output.writeBoolean(this.walkablePlatforms);
        output.writeBoolean(this.noBounty);
        output.writeBoolean(this.noMiners);
        output.writeVarLong(this.score, true);
    }

    public MapPrestigeConfig(String str, double d, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, long j) {
        this.userMapId = str;
        this.mapPrice = d;
        this.averageDifficulty = i;
        this.noAbilities = z;
        this.noResearch = z2;
        this.walkablePlatforms = z3;
        this.noBounty = z4;
        this.noMiners = z5;
        this.score = j;
    }

    public int getTotalBonus() {
        int i;
        int i2;
        int i3;
        double scoreMultiplier = getScoreMultiplier();
        int difficultyBonus = getDifficultyBonus() + 50;
        int i4 = 0;
        if (this.noResearch) {
            i = 40;
        } else {
            i = 0;
        }
        int i5 = difficultyBonus + i;
        int i6 = 10;
        if (this.noAbilities) {
            i2 = 10;
        } else {
            i2 = 0;
        }
        int i7 = i5 + i2;
        if (!this.walkablePlatforms) {
            i6 = 0;
        }
        int i8 = i7 + i6;
        if (this.noBounty) {
            i3 = 20;
        } else {
            i3 = 0;
        }
        int i9 = i8 + i3;
        if (this.noMiners) {
            i4 = 20;
        }
        return MathUtils.floor((i9 + i4) * ((float) scoreMultiplier));
    }
}
