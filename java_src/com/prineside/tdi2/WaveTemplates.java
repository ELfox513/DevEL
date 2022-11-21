package com.prineside.tdi2;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.waves.templates.ArmoredLow;
import com.prineside.tdi2.waves.templates.ArmoredRegular;
import com.prineside.tdi2.waves.templates.ArmoredStrong;
import com.prineside.tdi2.waves.templates.FastHigh;
import com.prineside.tdi2.waves.templates.FastLow;
import com.prineside.tdi2.waves.templates.FastMedium;
import com.prineside.tdi2.waves.templates.FighterArmored;
import com.prineside.tdi2.waves.templates.FighterLow;
import com.prineside.tdi2.waves.templates.FighterMedium;
import com.prineside.tdi2.waves.templates.HealerArmored;
import com.prineside.tdi2.waves.templates.HealerIcy;
import com.prineside.tdi2.waves.templates.HealerJet;
import com.prineside.tdi2.waves.templates.HealerRegular;
import com.prineside.tdi2.waves.templates.HealerSlow;
import com.prineside.tdi2.waves.templates.HealerStrong;
import com.prineside.tdi2.waves.templates.HeliMedium;
import com.prineside.tdi2.waves.templates.IcyHigh;
import com.prineside.tdi2.waves.templates.IcyToxic;
import com.prineside.tdi2.waves.templates.JetMedium;
import com.prineside.tdi2.waves.templates.LightFast;
import com.prineside.tdi2.waves.templates.LightHigh;
import com.prineside.tdi2.waves.templates.LightMedium;
import com.prineside.tdi2.waves.templates.RegularHigh;
import com.prineside.tdi2.waves.templates.RegularLow;
import com.prineside.tdi2.waves.templates.RegularMedium;
import com.prineside.tdi2.waves.templates.StrongLow;
import com.prineside.tdi2.waves.templates.StrongMedium;
import com.prineside.tdi2.waves.templates.ToxicArmored;
import com.prineside.tdi2.waves.templates.ToxicHigh;
import com.prineside.tdi2.waves.templates.ToxicMedium;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class WaveTemplates {
    public static final ArmoredLow ARMORED_LOW;
    public static final ArmoredRegular ARMORED_REGULAR;
    public static final ArmoredStrong ARMORED_STRONG;
    public static final FastHigh FAST_HIGH;
    public static final FastLow FAST_LOW;
    public static final FastMedium FAST_MEDIUM;
    public static final FighterArmored FIGHTER_ARMORED;
    public static final FighterLow FIGHTER_LOW;
    public static final FighterMedium FIGHTER_MEDIUM;
    public static final HealerArmored HEALER_ARMORED;
    public static final HealerIcy HEALER_ICY;
    public static final HealerJet HEALER_JET;
    public static final HealerRegular HEALER_REGULAR;
    public static final HealerSlow HEALER_SLOW;
    public static final HealerStrong HEALER_STRONG;
    public static final HeliMedium HELI_MEDIUM;
    public static final IcyHigh ICY_HIGH;
    public static final IcyToxic ICY_TOXIC;
    public static final JetMedium JET_MEDIUM;
    public static final LightFast LIGHT_FAST;
    public static final LightHigh LIGHT_HIGH;
    public static final LightMedium LIGHT_MEDIUM;
    public static final RegularHigh REGULAR_HIGH;
    public static final RegularLow REGULAR_LOW;
    public static final RegularMedium REGULAR_MEDIUM;
    public static final StrongLow STRONG_LOW;
    public static final StrongMedium STRONG_MEDIUM;
    public static final ToxicArmored TOXIC_ARMORED;
    public static final ToxicHigh TOXIC_HIGH;
    public static final ToxicMedium TOXIC_MEDIUM;
    public static final WaveTemplate[] WAVE_TEMPLATES;

    /* loaded from: classes2.dex */
    public interface EnemyGroupConfig {
        float getBounty(int i, float f, float f2);

        int getCount(int i, float f, float f2);

        float getDelay(int i, float f, float f2);

        EnemyType getEnemyType();

        float getHealth(int i, float f, float f2);

        float getInterval(int i, float f, float f2);

        float getKillExp(int i, float f, float f2);

        int getKillScore(int i, float f, float f2);

        float getSpeed(int i, float f, float f2);
    }

    @REGS(arrayLevels = 1)
    /* loaded from: classes2.dex */
    public static class PredefinedWaveTemplate implements KryoSerializable {
        public EnemyGroup[] enemyGroups;
        public String waveMessage;

        public PredefinedWaveTemplate() {
        }

        public PredefinedWaveTemplate(EnemyGroup enemyGroup) {
            this.enemyGroups = r0;
            EnemyGroup[] enemyGroupArr = {enemyGroup};
        }

        public static PredefinedWaveTemplate fromJson(JsonValue jsonValue) {
            PredefinedWaveTemplate predefinedWaveTemplate = new PredefinedWaveTemplate();
            predefinedWaveTemplate.waveMessage = jsonValue.getString("message", null);
            JsonValue jsonValue2 = jsonValue.get("enemyGroups");
            predefinedWaveTemplate.enemyGroups = new EnemyGroup[jsonValue2.size];
            Iterator<JsonValue> iterator2 = jsonValue2.iterator2();
            int i = 0;
            while (iterator2.hasNext()) {
                predefinedWaveTemplate.enemyGroups[i] = EnemyGroup.fromJson(iterator2.next());
                i++;
            }
            return predefinedWaveTemplate;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.waveMessage = (String) kryo.readObjectOrNull(input, String.class);
            this.enemyGroups = (EnemyGroup[]) kryo.readObjectOrNull(input, EnemyGroup[].class);
        }

        public void toJson(Json json) {
            EnemyGroup[] enemyGroupArr;
            String str = this.waveMessage;
            if (str != null) {
                json.writeValue("message", str);
            }
            json.writeArrayStart("enemyGroups");
            for (EnemyGroup enemyGroup : this.enemyGroups) {
                json.writeObjectStart();
                enemyGroup.toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.waveMessage, String.class);
            kryo.writeObjectOrNull(output, this.enemyGroups, EnemyGroup[].class);
        }

        public PredefinedWaveTemplate(EnemyGroup enemyGroup, EnemyGroup enemyGroup2) {
            this.enemyGroups = r0;
            EnemyGroup[] enemyGroupArr = {enemyGroup, enemyGroup2};
        }

        public PredefinedWaveTemplate(EnemyGroup enemyGroup, EnemyGroup enemyGroup2, EnemyGroup enemyGroup3) {
            this.enemyGroups = r0;
            EnemyGroup[] enemyGroupArr = {enemyGroup, enemyGroup2, enemyGroup3};
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class WaveTemplate {
        @NAGS
        public int currentProbability;

        public abstract EnemyGroupConfig[] getEnemyGroupConfigs();

        public abstract int getProbability(int i, float f, float f2);

        public abstract String getWaveMessage();

        public abstract String getWaveName();
    }

    public static int calculateProbability(int i, float f, int i2, float f2, float f3, float f4, float f5, float f6, float f7, int i3) {
        float f8 = i2;
        if (f < f8) {
            return 1;
        }
        int abs = (int) ((f6 - ((int) (f7 * f))) * ((1.0f - f3) + (StrictMath.abs(PMath.sin((i * f4) + f5)) * f3)) * Interpolation.pow2.apply(MathUtils.clamp((f - f8) * f2, 0.0f, 1.0f)));
        if (abs >= i3 || f <= 20.0f) {
            i3 = abs;
        }
        if (i3 < 1) {
            return 1;
        }
        return i3;
    }

    static {
        RegularMedium regularMedium = new RegularMedium();
        REGULAR_MEDIUM = regularMedium;
        RegularLow regularLow = new RegularLow();
        REGULAR_LOW = regularLow;
        RegularHigh regularHigh = new RegularHigh();
        REGULAR_HIGH = regularHigh;
        StrongMedium strongMedium = new StrongMedium();
        STRONG_MEDIUM = strongMedium;
        StrongLow strongLow = new StrongLow();
        STRONG_LOW = strongLow;
        FastMedium fastMedium = new FastMedium();
        FAST_MEDIUM = fastMedium;
        FastHigh fastHigh = new FastHigh();
        FAST_HIGH = fastHigh;
        FastLow fastLow = new FastLow();
        FAST_LOW = fastLow;
        HeliMedium heliMedium = new HeliMedium();
        HELI_MEDIUM = heliMedium;
        JetMedium jetMedium = new JetMedium();
        JET_MEDIUM = jetMedium;
        ArmoredLow armoredLow = new ArmoredLow();
        ARMORED_LOW = armoredLow;
        ArmoredRegular armoredRegular = new ArmoredRegular();
        ARMORED_REGULAR = armoredRegular;
        ArmoredStrong armoredStrong = new ArmoredStrong();
        ARMORED_STRONG = armoredStrong;
        HealerRegular healerRegular = new HealerRegular();
        HEALER_REGULAR = healerRegular;
        HealerSlow healerSlow = new HealerSlow();
        HEALER_SLOW = healerSlow;
        HealerStrong healerStrong = new HealerStrong();
        HEALER_STRONG = healerStrong;
        HealerArmored healerArmored = new HealerArmored();
        HEALER_ARMORED = healerArmored;
        HealerJet healerJet = new HealerJet();
        HEALER_JET = healerJet;
        ToxicMedium toxicMedium = new ToxicMedium();
        TOXIC_MEDIUM = toxicMedium;
        ToxicHigh toxicHigh = new ToxicHigh();
        TOXIC_HIGH = toxicHigh;
        ToxicArmored toxicArmored = new ToxicArmored();
        TOXIC_ARMORED = toxicArmored;
        IcyHigh icyHigh = new IcyHigh();
        ICY_HIGH = icyHigh;
        IcyToxic icyToxic = new IcyToxic();
        ICY_TOXIC = icyToxic;
        HealerIcy healerIcy = new HealerIcy();
        HEALER_ICY = healerIcy;
        FighterLow fighterLow = new FighterLow();
        FIGHTER_LOW = fighterLow;
        FighterMedium fighterMedium = new FighterMedium();
        FIGHTER_MEDIUM = fighterMedium;
        FighterArmored fighterArmored = new FighterArmored();
        FIGHTER_ARMORED = fighterArmored;
        LightMedium lightMedium = new LightMedium();
        LIGHT_MEDIUM = lightMedium;
        LightHigh lightHigh = new LightHigh();
        LIGHT_HIGH = lightHigh;
        LightFast lightFast = new LightFast();
        LIGHT_FAST = lightFast;
        WAVE_TEMPLATES = new WaveTemplate[]{regularMedium, regularLow, regularHigh, strongMedium, strongLow, fastMedium, fastHigh, fastLow, heliMedium, jetMedium, armoredLow, armoredRegular, armoredStrong, healerRegular, healerSlow, healerStrong, healerArmored, healerJet, toxicMedium, toxicHigh, toxicArmored, icyHigh, icyToxic, healerIcy, fighterLow, fighterMedium, fighterArmored, lightMedium, lightHigh, lightFast};
    }
}
