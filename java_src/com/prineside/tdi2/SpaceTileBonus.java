package com.prineside.tdi2;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
/* loaded from: classes2.dex */
public class SpaceTileBonus {
    public static final int MAX_LEVEL = 5;

    /* renamed from: a */
    public static final SpaceTileBonusConfig[] f8891a;

    /* renamed from: b */
    public static final SpaceTileBonusType[] f8892b;

    /* renamed from: c */
    public static final TowerStatType[] f8893c;

    /* renamed from: d */
    public static final StringBuilder f8894d;

    public static Color getBrightColor(SpaceTileBonusType spaceTileBonusType) {
        return f8891a[spaceTileBonusType.ordinal()].f8899e;
    }

    public static Color getColor(SpaceTileBonusType spaceTileBonusType) {
        return f8891a[spaceTileBonusType.ordinal()].f8898d;
    }

    public static String getIconName(SpaceTileBonusType spaceTileBonusType) {
        return f8891a[spaceTileBonusType.ordinal()].f8897c;
    }

    /* loaded from: classes2.dex */
    public static class SpaceTileBonusConfig {

        /* renamed from: a */
        public final float[] f8895a;

        /* renamed from: b */
        public final String f8896b;

        /* renamed from: c */
        public final String f8897c;

        /* renamed from: d */
        public final Color f8898d;

        /* renamed from: e */
        public final Color f8899e;

        public SpaceTileBonusConfig(SpaceTileBonusType spaceTileBonusType, String str, float[] fArr, Color color, Color color2) {
            this.f8896b = "space_tile_bonus_" + spaceTileBonusType.name();
            this.f8897c = str;
            this.f8895a = fArr;
            this.f8898d = color;
            this.f8899e = color2;
        }
    }

    static {
        SpaceTileBonusConfig[] spaceTileBonusConfigArr = new SpaceTileBonusConfig[SpaceTileBonusType.values.length];
        f8891a = spaceTileBonusConfigArr;
        SpaceTileBonusType spaceTileBonusType = SpaceTileBonusType.RANGE;
        spaceTileBonusConfigArr[spaceTileBonusType.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType, "icon-range", new float[]{1.1f, 1.2f, 1.3f, 1.4f, 1.5f}, MaterialColor.GREEN.P500, MaterialColor.GREEN.P300);
        SpaceTileBonusType spaceTileBonusType2 = SpaceTileBonusType.DAMAGE;
        spaceTileBonusConfigArr[spaceTileBonusType2.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType2, "icon-damage", new float[]{1.15f, 1.3f, 1.5f, 1.7f, 2.0f}, MaterialColor.RED.P500, MaterialColor.RED.P300);
        SpaceTileBonusType spaceTileBonusType3 = SpaceTileBonusType.ATTACK_SPEED;
        spaceTileBonusConfigArr[spaceTileBonusType3.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType3, "icon-attack-speed", new float[]{1.15f, 1.3f, 1.5f, 1.7f, 2.0f}, MaterialColor.ORANGE.P500, MaterialColor.ORANGE.P300);
        SpaceTileBonusType spaceTileBonusType4 = SpaceTileBonusType.ROTATION_SPEED;
        spaceTileBonusConfigArr[spaceTileBonusType4.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType4, "icon-rotation-speed", new float[]{1.3f, 1.6f, 2.0f, 2.4f, 3.0f}, MaterialColor.PURPLE.P500, MaterialColor.PURPLE.P300);
        SpaceTileBonusType spaceTileBonusType5 = SpaceTileBonusType.PROJECTILE_SPEED;
        spaceTileBonusConfigArr[spaceTileBonusType5.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType5, "icon-projectile-speed", new float[]{1.3f, 1.6f, 2.0f, 2.4f, 3.0f}, MaterialColor.DEEP_PURPLE.P500, MaterialColor.DEEP_PURPLE.P300);
        SpaceTileBonusType spaceTileBonusType6 = SpaceTileBonusType.BONUS_EXPERIENCE;
        spaceTileBonusConfigArr[spaceTileBonusType6.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType6, "icon-experience-plus", new float[]{1.15f, 1.3f, 1.5f, 1.7f, 2.0f}, MaterialColor.CYAN.P500, MaterialColor.CYAN.P300);
        SpaceTileBonusType spaceTileBonusType7 = SpaceTileBonusType.BONUS_COINS;
        spaceTileBonusConfigArr[spaceTileBonusType7.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType7, "icon-coins", new float[]{1.1f, 1.2f, 1.3f, 1.4f, 1.5f}, MaterialColor.YELLOW.P500, MaterialColor.YELLOW.P300);
        SpaceTileBonusType spaceTileBonusType8 = SpaceTileBonusType.UPGRADE_DISCOUNT;
        spaceTileBonusConfigArr[spaceTileBonusType8.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType8, "icon-upgrade-money", new float[]{0.98f, 0.96f, 0.94f, 0.92f, 0.9f}, MaterialColor.TEAL.P500, MaterialColor.TEAL.P300);
        SpaceTileBonusType spaceTileBonusType9 = SpaceTileBonusType.SELL_REFUND;
        spaceTileBonusConfigArr[spaceTileBonusType9.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType9, "icon-sell-refund", new float[]{0.8f, 0.85f, 0.9f, 0.95f, 0.99f}, MaterialColor.INDIGO.P500, MaterialColor.INDIGO.P300);
        SpaceTileBonusType spaceTileBonusType10 = SpaceTileBonusType.PWR_MULTIPLIER;
        spaceTileBonusConfigArr[spaceTileBonusType10.ordinal()] = new SpaceTileBonusConfig(spaceTileBonusType10, "icon-power-plus", new float[]{1.05f, 1.1f, 1.15f, 1.2f, 1.25f}, MaterialColor.PINK.P500, MaterialColor.PINK.P300);
        TowerStatType[] towerStatTypeArr = TowerStatType.values;
        SpaceTileBonusType[] spaceTileBonusTypeArr = new SpaceTileBonusType[towerStatTypeArr.length];
        f8892b = spaceTileBonusTypeArr;
        spaceTileBonusTypeArr[TowerStatType.RANGE.ordinal()] = spaceTileBonusType;
        spaceTileBonusTypeArr[TowerStatType.DAMAGE.ordinal()] = spaceTileBonusType2;
        spaceTileBonusTypeArr[TowerStatType.ATTACK_SPEED.ordinal()] = spaceTileBonusType3;
        spaceTileBonusTypeArr[TowerStatType.ROTATION_SPEED.ordinal()] = spaceTileBonusType4;
        spaceTileBonusTypeArr[TowerStatType.PROJECTILE_SPEED.ordinal()] = spaceTileBonusType5;
        f8893c = new TowerStatType[towerStatTypeArr.length];
        int i = 0;
        while (true) {
            TowerStatType[] towerStatTypeArr2 = TowerStatType.values;
            if (i < towerStatTypeArr2.length) {
                SpaceTileBonusType spaceTileBonusType11 = f8892b[i];
                if (spaceTileBonusType11 != null) {
                    f8893c[spaceTileBonusType11.ordinal()] = towerStatTypeArr2[i];
                }
                i++;
            } else {
                f8894d = new StringBuilder();
                return;
            }
        }
    }

    public static StringBuilder getDetailedName(SpaceTileBonusType spaceTileBonusType, int i) {
        StringBuilder stringBuilder = f8894d;
        stringBuilder.setLength(0);
        stringBuilder.append(Game.f8589i.localeManager.i18n.get(f8891a[spaceTileBonusType.ordinal()].f8896b));
        if (i > 0) {
            stringBuilder.append(" ").append(StringFormatter.romanNumber(i));
        }
        stringBuilder.append(" (").append(MathUtils.round(getEffect(spaceTileBonusType, i) * 100.0f)).append("%)");
        return stringBuilder;
    }

    public static float getEffect(SpaceTileBonusType spaceTileBonusType, int i) {
        if (i != 0) {
            if (i >= 1 && i <= 5) {
                return f8891a[spaceTileBonusType.ordinal()].f8895a[i - 1];
            }
            throw new IllegalArgumentException("Max space tile bonus level is 5, " + i + " given");
        }
        throw new IllegalArgumentException("level is 0 for " + spaceTileBonusType);
    }
}
