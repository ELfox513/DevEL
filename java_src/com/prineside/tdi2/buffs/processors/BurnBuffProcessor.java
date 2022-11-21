package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.buffs.BurnBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BurnBuffProcessor extends BuffProcessor<BurnBuff> {
    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_I;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.27f;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, BurnBuff burnBuff) {
        BuffType buffType = BuffType.BURN;
        DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(buffType);
        if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
            BurnBuff burnBuff2 = ((BurnBuff[]) buffsByTypeOrNull.items)[0];
            if (burnBuff2.fireDamage * burnBuff2.duration < burnBuff.duration * burnBuff.fireDamage) {
                removeBuff(enemy, buffType, 0);
                return super.addBuff(enemy, (Enemy) burnBuff);
            }
            burnBuff.free();
            return false;
        }
        return super.addBuff(enemy, (Enemy) burnBuff);
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        DelayedRemovalArray buffsByTypeOrNull;
        this.f8844S.map.spawnedEnemies.begin();
        int i = this.f8844S.map.spawnedEnemies.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy enemy = this.f8844S.map.spawnedEnemies.items[i2].enemy;
            if (enemy != null && (buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.BURN)) != null && buffsByTypeOrNull.size != 0) {
                buffsByTypeOrNull.begin();
                int i3 = buffsByTypeOrNull.size;
                for (int i4 = 0; i4 < i3; i4++) {
                    BurnBuff burnBuff = ((BurnBuff[]) buffsByTypeOrNull.items)[i4];
                    this.f8844S.enemy.giveDamage(enemy, burnBuff.tower, burnBuff.fireDamage * f * enemy.getBuffVulnerability(BuffType.BURN), DamageType.FIRE, burnBuff.fromAbility, true, null);
                }
                buffsByTypeOrNull.end();
            }
        }
        this.f8844S.map.spawnedEnemies.end();
    }
}
