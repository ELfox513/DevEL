package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.FreezingBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class FreezingBuffProcessor extends BuffProcessor<FreezingBuff> {
    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_F;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.1f;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, FreezingBuff freezingBuff) {
        DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.FREEZING);
        if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
            buffsByTypeOrNull.begin();
            int i = 0;
            while (true) {
                if (i >= buffsByTypeOrNull.size) {
                    break;
                } else if (((FreezingBuff[]) buffsByTypeOrNull.items)[i].tower == freezingBuff.tower) {
                    removeBuff(enemy, BuffType.FREEZING, i);
                    break;
                } else {
                    i++;
                }
            }
            buffsByTypeOrNull.end();
        }
        return super.addBuff(enemy, (Enemy) freezingBuff);
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        this.f8844S.map.spawnedEnemies.begin();
        int i = this.f8844S.map.spawnedEnemies.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy enemy = this.f8844S.map.spawnedEnemies.items[i2].enemy;
            if (enemy != null) {
                DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.FREEZING);
                if (enemy.buffFreezingPercent != 0.0f || (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0)) {
                    boolean hasBuffsByType = enemy.hasBuffsByType(BuffType.BURN);
                    if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
                        enemy.buffFreezingLightningLengthBonus = 0.0f;
                        enemy.buffFreezingPoisonDurationBonus = 0.0f;
                        buffsByTypeOrNull.begin();
                        int i3 = buffsByTypeOrNull.size;
                        float f2 = 0.0f;
                        for (int i4 = 0; i4 < i3; i4++) {
                            FreezingBuff freezingBuff = ((FreezingBuff[]) buffsByTypeOrNull.items)[i4];
                            float f3 = enemy.buffFreezingPercent;
                            float f4 = freezingBuff.maxPercent;
                            if (f3 < f4) {
                                float f5 = f4 - f3;
                                float f6 = freezingBuff.speed * f;
                                if (hasBuffsByType) {
                                    f6 *= 0.333f;
                                }
                                if (f6 <= f5) {
                                    f5 = f6;
                                }
                                enemy.buffFreezingPercent = f3 + f5;
                                Tower tower = freezingBuff.tower;
                                if (tower != null) {
                                    this.f8844S.tower.addExperienceBuffed(tower, f5 * 0.02f);
                                }
                            }
                            float f7 = freezingBuff.maxPercent;
                            if (f7 > f2) {
                                f2 = f7;
                            }
                            float f8 = enemy.buffFreezingPoisonDurationBonus;
                            float f9 = freezingBuff.poisonDurationBonus;
                            if (f8 < f9) {
                                enemy.buffFreezingPoisonDurationBonus = f9;
                            }
                            float f10 = enemy.buffFreezingLightningLengthBonus;
                            float f11 = freezingBuff.lightningLengthBonus;
                            if (f10 < f11) {
                                enemy.buffFreezingLightningLengthBonus = f11;
                            }
                        }
                        buffsByTypeOrNull.end();
                        if (hasBuffsByType) {
                            f2 *= 0.67f;
                        }
                        float f12 = enemy.buffFreezingPercent;
                        if (f12 > f2) {
                            float min = enemy.buffFreezingPercent - StrictMath.min(f * 100.0f, f12 - f2);
                            enemy.buffFreezingPercent = min;
                            if (min < 0.0f) {
                                enemy.buffFreezingPercent = 0.0f;
                            }
                        }
                    } else {
                        float f13 = f * 100.0f;
                        if (hasBuffsByType) {
                            f13 *= 3.0f;
                        }
                        float f14 = enemy.buffFreezingPercent - f13;
                        enemy.buffFreezingPercent = f14;
                        if (f14 < 0.0f) {
                            enemy.buffFreezingPercent = 0.0f;
                        }
                        enemy.buffFreezingLightningLengthBonus = 0.0f;
                        enemy.buffFreezingPoisonDurationBonus = 0.0f;
                    }
                    if (enemy.buffFreezingPercent > 100.0f) {
                        enemy.buffFreezingPercent = 100.0f;
                    }
                }
            }
        }
        this.f8844S.map.spawnedEnemies.end();
    }
}
