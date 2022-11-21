package com.prineside.tdi2.buffs.processors;

import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.buffs.SnowballBuff;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class SnowballBuffProcessor extends BuffProcessor<SnowballBuff> {
    public static final int MAX_HITS_ONE_ENEMY;
    public static final float[] STUN_DURATION_BY_STUN_COUNT;

    static {
        float[] fArr = {1.0f, 0.8f, 0.65f, 0.5f, 0.35f, 0.2f};
        STUN_DURATION_BY_STUN_COUNT = fArr;
        MAX_HITS_ONE_ENEMY = fArr.length;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_F;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.231f;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, SnowballBuff snowballBuff) {
        if (enemy.buffSnowballHits >= MAX_HITS_ONE_ENEMY) {
            snowballBuff.free();
            return false;
        } else if (enemy.hasBuffsByType(BuffType.SNOWBALL)) {
            snowballBuff.free();
            return false;
        } else {
            boolean addBuff = super.addBuff(enemy, (Enemy) snowballBuff);
            if (addBuff) {
                enemy.buffSnowballHits++;
                if (this.f8844S.achievement.isActive()) {
                    Game.f8589i.achievementManager.setProgress(AchievementType.HIT_ENEMY_WITH_SNOWBALLS, enemy.buffSnowballHits);
                }
            }
            return addBuff;
        }
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        int i = this.f8844S.map.spawnedEnemies.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy enemy = this.f8844S.map.spawnedEnemies.items[i2].enemy;
            if (enemy != null) {
                enemy.buffSnowballActive = enemy.hasBuffsByType(BuffType.SNOWBALL);
            }
        }
    }
}
