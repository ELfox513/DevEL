package com.prineside.tdi2.managers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class TowerStatManager extends Manager.ManagerAdapter {

    /* renamed from: b */
    public static final StringBuilder f10199b = new StringBuilder();

    /* renamed from: d */
    public static final StringBuilder f10200d = new StringBuilder();

    /* renamed from: a */
    public final TowerStat[] f10201a;

    /* renamed from: com.prineside.tdi2.managers.TowerStatManager$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C18871 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10202a;

        static {
            int[] iArr = new int[TowerStatType.values().length];
            f10202a = iArr;
            try {
                iArr[TowerStatType.ATTACK_SPEED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10202a[TowerStatType.ROTATION_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10202a[TowerStatType.AIM_SPEED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10202a[TowerStatType.U_ACCELERATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10202a[TowerStatType.U_LRM_AIM_SPEED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10202a[TowerStatType.FREEZE_SPEED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10202a[TowerStatType.U_POISON_DURATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f10202a[TowerStatType.U_STUN_DURATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f10202a[TowerStatType.FREEZE_PERCENT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f10202a[TowerStatType.STUN_CHANCE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f10202a[TowerStatType.CHAIN_LIGHTNING_DAMAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f10202a[TowerStatType.U_CRIT_CHANCE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f10202a[TowerStatType.U_BURN_CHANCE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f10202a[TowerStatType.U_DAMAGE_MULTIPLY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f10202a[TowerStatType.U_CRIT_MULTIPLIER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f10202a[TowerStatType.U_CHAIN_LIGHTNING_BONUS_LENGTH.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f10202a[TowerStatType.U_POISON_DURATION_BONUS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<TowerStatManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public TowerStatManager read() {
            return Game.f8589i.towerStatManager;
        }
    }

    public TowerStat getInstance(TowerStatType towerStatType) {
        return this.f10201a[towerStatType.ordinal()];
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
    }

    /* loaded from: classes2.dex */
    public static class TowerStat {

        /* renamed from: a */
        public String f10203a;

        /* renamed from: b */
        public String f10204b;

        /* renamed from: c */
        public TowerStatType f10205c;

        /* renamed from: d */
        public Color f10206d;

        /* renamed from: e */
        public String f10207e;
        public String unitsAlias;

        public Color getColor() {
            return this.f10206d;
        }

        public String getIconDrawableAlias() {
            return this.f10207e;
        }

        public String getName() {
            return Game.f8589i.localeManager.i18n.get(this.f10204b);
        }

        public TowerStatType getType() {
            return this.f10205c;
        }

        public StringBuilder getFormattedValue(float f, boolean z) {
            TowerStatManager.f10199b.setLength(0);
            TowerStatManager.f10199b.append(StringFormatter.compactNumber(f, true));
            if (z) {
                switch (C18871.f10202a[this.f10205c.ordinal()]) {
                    case 1:
                    case 2:
                        TowerStatManager.f10199b.append("/").append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        TowerStatManager.f10199b.append("%/").append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
                        break;
                    case 6:
                    case 7:
                    case 8:
                        TowerStatManager.f10199b.append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
                        break;
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        TowerStatManager.f10199b.append("%");
                        break;
                    case 14:
                    case 15:
                        TowerStatManager.f10200d.setLength(0);
                        TowerStatManager.f10200d.append(TowerStatManager.f10199b);
                        TowerStatManager.f10199b.setLength(0);
                        TowerStatManager.f10199b.append('x').append(TowerStatManager.f10200d);
                        break;
                    case 16:
                        TowerStatManager.f10200d.setLength(0);
                        TowerStatManager.f10200d.append(TowerStatManager.f10199b);
                        TowerStatManager.f10199b.setLength(0);
                        TowerStatManager.f10199b.append(SignatureVisitor.EXTENDS).append(TowerStatManager.f10200d);
                        break;
                    case 17:
                        TowerStatManager.f10200d.setLength(0);
                        TowerStatManager.f10200d.append(TowerStatManager.f10199b);
                        TowerStatManager.f10199b.setLength(0);
                        TowerStatManager.f10199b.append(SignatureVisitor.EXTENDS).append(TowerStatManager.f10200d).append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
                        break;
                }
            }
            return TowerStatManager.f10199b;
        }
    }

    /* renamed from: c */
    public final void m21467c(TowerStatType towerStatType, String str, Color color, String str2) {
        TowerStat towerStat = new TowerStat();
        towerStat.f10205c = towerStatType;
        towerStat.f10204b = "tower_stat_" + towerStatType.name();
        towerStat.f10203a = "tower_stat_short_" + towerStatType.name();
        towerStat.unitsAlias = str2;
        towerStat.f10207e = str;
        towerStat.f10206d = color;
        this.f10201a[towerStatType.ordinal()] = towerStat;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        TowerStatType[] towerStatTypeArr;
        for (TowerStatType towerStatType : TowerStatType.values) {
            if (Game.f8589i.assetManager.getTextureRegion(this.f10201a[towerStatType.ordinal()].getIconDrawableAlias()) == null) {
                Logger.error("TowerStatManager", "Icon texture region is null for stat type " + towerStatType.name());
            }
        }
    }

    public TowerStatManager() {
        TowerStatType[] towerStatTypeArr = TowerStatType.values;
        this.f10201a = new TowerStat[towerStatTypeArr.length];
        m21467c(TowerStatType.RANGE, "icon-range", MaterialColor.GREEN.P500, "measure_units_tiles");
        TowerStatType towerStatType = TowerStatType.DAMAGE;
        Color color = MaterialColor.RED.P500;
        m21467c(towerStatType, "icon-damage", color, null);
        m21467c(TowerStatType.ATTACK_SPEED, "icon-attack-speed", MaterialColor.ORANGE.P500, "measure_units_units_per_second");
        m21467c(TowerStatType.ROTATION_SPEED, "icon-rotation-speed", MaterialColor.PURPLE.P500, "measure_units_degrees_per_second");
        m21467c(TowerStatType.PROJECTILE_SPEED, "icon-projectile-speed", MaterialColor.DEEP_PURPLE.P500, "measure_units_tiles_per_second");
        TowerStatType towerStatType2 = TowerStatType.AIM_SPEED;
        Color color2 = MaterialColor.CYAN.P500;
        m21467c(towerStatType2, "icon-aim-time", color2, "measure_units_percent_per_second");
        m21467c(TowerStatType.CHARGING_SPEED, "icon-aim-time", color2, "measure_units_percent_per_second");
        m21467c(TowerStatType.FREEZE_PERCENT, "icon-freeze-percent", MaterialColor.LIGHT_BLUE.P500, "measure_units_percent");
        m21467c(TowerStatType.FREEZE_SPEED, "icon-freeze-in-time", MaterialColor.INDIGO.P500, "measure_units_percent_per_second");
        m21467c(TowerStatType.ACCURACY, "icon-crosshair", MaterialColor.LIGHT_GREEN.P500, "measure_units_percent");
        m21467c(TowerStatType.STUN_CHANCE, "icon-stun", MaterialColor.TEAL.P500, "measure_units_percent");
        m21467c(TowerStatType.CHAIN_LIGHTNING_DAMAGE, "icon-lightning-damage", MaterialColor.DEEP_ORANGE.P500, "measure_units_percent");
        m21467c(TowerStatType.RESOURCE_CONSUMPTION, "icon-cubes-stacked-flame", color, null);
        m21467c(TowerStatType.DURATION, "icon-clock", MaterialColor.PINK.P500, "measure_units_seconds");
        TowerStatType towerStatType3 = TowerStatType.PRICE;
        Color color3 = Color.WHITE;
        m21467c(towerStatType3, "icon-dollar", color3, null);
        m21467c(TowerStatType.STARTING_LEVEL, "icon-experience-bar", color3, null);
        m21467c(TowerStatType.STARTING_POWER, "icon-power", color3, null);
        m21467c(TowerStatType.MAX_EXP_LEVEL, "icon-experience-max", color3, null);
        m21467c(TowerStatType.MAX_UPGRADE_LEVEL, "icon-upgrade-max", color3, null);
        m21467c(TowerStatType.EXPERIENCE_MULTIPLIER, "icon-experience-plus", color3, null);
        m21467c(TowerStatType.EXPERIENCE_GENERATION, "icon-experience-generation", color3, null);
        m21467c(TowerStatType.UPGRADE_PRICE, "icon-upgrade-money", color3, null);
        TowerStatType towerStatType4 = TowerStatType.U_DAMAGE_MULTIPLY;
        Color color4 = MaterialColor.AMBER.P600;
        m21467c(towerStatType4, "icon-damage-multiplier", color4, "measure_units_percent");
        m21467c(TowerStatType.U_CRIT_CHANCE, "icon-critical-damage-percent", color4, "measure_units_percent");
        m21467c(TowerStatType.U_CRIT_MULTIPLIER, "icon-critical-damage", color4, "measure_units_percent");
        m21467c(TowerStatType.U_EXPLOSION_RANGE, "icon-explosion-range", color4, "measure_units_tiles");
        m21467c(TowerStatType.U_POISON_DURATION_BONUS, "icon-skull-and-bones-clock-plus", color4, "measure_units_seconds");
        m21467c(TowerStatType.U_CHAIN_LIGHTNING_BONUS_LENGTH, "icon-lightning-length", color4, "measure_units_percent");
        m21467c(TowerStatType.U_POISON_DURATION, "icon-skull-and-bones-clock", color4, "measure_units_seconds");
        m21467c(TowerStatType.U_PROJECTILE_COUNT, "icon-projectile-count", color4, null);
        m21467c(TowerStatType.U_STUN_DURATION, "icon-stun-clock", color4, "measure_units_seconds");
        m21467c(TowerStatType.U_BURN_CHANCE, "icon-flame-percent", color4, "measure_units_percent");
        m21467c(TowerStatType.U_ACCELERATION, "icon-speedometer-clock", color4, "measure_units_percent_per_second");
        m21467c(TowerStatType.U_SHOOT_ANGLE, "icon-shot-angle", color4, "measure_units_degrees");
        m21467c(TowerStatType.U_CHAIN_LIGHTNING_LENGTH, "icon-lightning-length", color4, null);
        m21467c(TowerStatType.U_LRM_AIM_SPEED, "icon-rocket-aim-time", color4, "measure_units_percent_per_second");
        m21467c(TowerStatType.U_BURNING_TIME, "icon-flame-clock", color4, "measure_units_seconds");
        m21467c(TowerStatType.U_BATTERIES_CAPACITY, "icon-battery-max", color4, "measure_units_seconds");
        m21467c(TowerStatType.U_BONUS_COINS, "icon-coin", color4, "measure_units_percent");
        m21467c(TowerStatType.U_BONUS_EXPERIENCE, "icon-experience-plus", color4, "measure_units_percent");
        for (TowerStatType towerStatType5 : towerStatTypeArr) {
            if (this.f10201a[towerStatType5.ordinal()] == null) {
                throw new RuntimeException("Tower stat type " + towerStatType5.name() + " is not initialized");
            }
        }
    }
}
