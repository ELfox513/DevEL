package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.utils.IntIntMap;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.buffs.StunBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class StunBuffProcessor extends BuffProcessor<StunBuff> {
    public static final float[] STUN_DURATION_BY_STUN_COUNT = {1.0f, 0.75f, 0.5f, 0.25f};

    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_S;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.251f;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, StunBuff stunBuff) {
        if (enemy.buffStunCount >= STUN_DURATION_BY_STUN_COUNT.length) {
            stunBuff.free();
            return false;
        } else if (!enemy.hasBuffsByType(BuffType.STUN) && this.f8844S.gameState.randomFloat() >= enemy.buffStunImmunity) {
            if (enemy.buffStunCountByTower == null) {
                enemy.buffStunCountByTower = new IntIntMap();
            }
            enemy.buffStunCountByTower.put(stunBuff.issuerId, enemy.buffStunCountByTower.get(stunBuff.issuerId, 0) + 1);
            enemy.buffStunCount = (byte) (enemy.buffStunCount + 1);
            enemy.buffStunImmunity = 1.0f;
            return super.addBuff(enemy, (Enemy) stunBuff);
        } else {
            stunBuff.free();
            return false;
        }
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        int i = this.f8844S.map.spawnedEnemies.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy enemy = this.f8844S.map.spawnedEnemies.items[i2].enemy;
            if (enemy != null) {
                enemy.buffStunActive = enemy.hasBuffsByType(BuffType.STUN);
                float f2 = enemy.buffStunImmunity - (0.025f * f);
                enemy.buffStunImmunity = f2;
                if (f2 < 0.0f) {
                    enemy.buffStunImmunity = 0.0f;
                }
            }
        }
    }
}
