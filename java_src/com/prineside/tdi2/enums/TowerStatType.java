package com.prineside.tdi2.enums;

import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public enum TowerStatType {
    RANGE,
    DAMAGE,
    ATTACK_SPEED,
    ROTATION_SPEED,
    PROJECTILE_SPEED,
    AIM_SPEED,
    CHARGING_SPEED,
    FREEZE_PERCENT,
    FREEZE_SPEED,
    ACCURACY,
    STUN_CHANCE,
    CHAIN_LIGHTNING_DAMAGE,
    RESOURCE_CONSUMPTION,
    DURATION,
    PRICE,
    STARTING_LEVEL,
    STARTING_POWER,
    MAX_EXP_LEVEL,
    MAX_UPGRADE_LEVEL,
    EXPERIENCE_MULTIPLIER,
    EXPERIENCE_GENERATION,
    UPGRADE_PRICE,
    U_DAMAGE_MULTIPLY,
    U_CRIT_CHANCE,
    U_CRIT_MULTIPLIER,
    U_EXPLOSION_RANGE,
    U_POISON_DURATION_BONUS,
    U_CHAIN_LIGHTNING_BONUS_LENGTH,
    U_POISON_DURATION,
    U_PROJECTILE_COUNT,
    U_STUN_DURATION,
    U_BURN_CHANCE,
    U_ACCELERATION,
    U_SHOOT_ANGLE,
    U_CHAIN_LIGHTNING_LENGTH,
    U_LRM_AIM_SPEED,
    U_BURNING_TIME,
    U_BATTERIES_CAPACITY,
    U_BONUS_COINS,
    U_BONUS_EXPERIENCE;
    
    public static final TowerStatType[] defaultValues;
    public static final TowerStatType[] uniqueValues;
    public static final TowerStatType[] values;

    static {
        int i = 0;
        TowerStatType[] values2 = values();
        values = values2;
        Array array = new Array();
        Array array2 = new Array();
        for (TowerStatType towerStatType : values2) {
            if (towerStatType.name().startsWith("U_")) {
                array2.add(towerStatType);
            } else {
                array.add(towerStatType);
            }
        }
        defaultValues = new TowerStatType[array.size];
        uniqueValues = new TowerStatType[array2.size];
        Array.ArrayIterator it = array.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            defaultValues[i2] = (TowerStatType) it.next();
            i2++;
        }
        Array.ArrayIterator it2 = array2.iterator();
        while (it2.hasNext()) {
            uniqueValues[i] = (TowerStatType) it2.next();
            i++;
        }
    }
}
