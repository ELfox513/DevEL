package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Sort;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.buffs.PoisonBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.utils.REGS;
import java.util.Comparator;
@REGS
/* loaded from: classes2.dex */
public class PoisonBuffProcessor extends BuffProcessor<PoisonBuff> {

    /* renamed from: d */
    public static final Comparator<PoisonBuff> f9134d = new Comparator<PoisonBuff>() { // from class: com.prineside.tdi2.buffs.processors.PoisonBuffProcessor.1
        @Override // java.util.Comparator
        public int compare(PoisonBuff poisonBuff, PoisonBuff poisonBuff2) {
            float f = poisonBuff.poisonDamage;
            float f2 = poisonBuff2.poisonDamage;
            if (f == f2) {
                return 0;
            }
            return f > f2 ? -1 : 1;
        }
    };

    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_P;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.3f;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, PoisonBuff poisonBuff) {
        DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.POISON);
        if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
            buffsByTypeOrNull.begin();
            int i = 0;
            while (true) {
                if (i >= buffsByTypeOrNull.size) {
                    break;
                } else if (((PoisonBuff[]) buffsByTypeOrNull.items)[i].tower == poisonBuff.tower) {
                    removeBuff(enemy, BuffType.POISON, i);
                    break;
                } else {
                    i++;
                }
            }
            buffsByTypeOrNull.end();
        }
        return super.addBuff(enemy, (Enemy) poisonBuff);
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        DelayedRemovalArray buffsByTypeOrNull;
        this.f8844S.map.spawnedEnemies.begin();
        int i = this.f8844S.map.spawnedEnemies.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy.EnemyReference enemyReference = this.f8844S.map.spawnedEnemies.items[i2];
            Enemy enemy = enemyReference.enemy;
            if (enemy != null && (buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.POISON)) != null && buffsByTypeOrNull.size != 0) {
                Sort.instance().sort(buffsByTypeOrNull, f9134d);
                float f2 = 1.0f;
                buffsByTypeOrNull.begin();
                int i3 = buffsByTypeOrNull.size;
                for (int i4 = 0; i4 < i3; i4++) {
                    PoisonBuff poisonBuff = ((PoisonBuff[]) buffsByTypeOrNull.items)[i4];
                    float f3 = poisonBuff.poisonDamage * f * f2;
                    float f4 = poisonBuff.duration;
                    Enemy enemy2 = enemyReference.enemy;
                    poisonBuff.duration = f4 + (enemy2.buffFreezingPoisonDurationBonus * 0.01f * f);
                    f2 *= 0.75f;
                    if (this.f8844S.enemy.giveDamage(enemy2, poisonBuff.tower, f3, DamageType.POISON, poisonBuff.fromAbility, true, null) || enemyReference.enemy == null) {
                        break;
                    }
                }
                buffsByTypeOrNull.end();
            }
        }
        this.f8844S.map.spawnedEnemies.end();
    }
}
