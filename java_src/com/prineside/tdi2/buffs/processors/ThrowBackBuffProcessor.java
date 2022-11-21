package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.utils.IntSet;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.buffs.ThrowBackBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ThrowBackBuffProcessor extends BuffProcessor<ThrowBackBuff> {
    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_TB;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, ThrowBackBuff throwBackBuff) {
        IntSet intSet;
        if (enemy.hasBuffsByType(BuffType.THROW_BACK)) {
            throwBackBuff.free();
            return false;
        }
        IntSet intSet2 = enemy.buffThrowBackAffectedBy;
        if ((intSet2 != null && intSet2.contains(throwBackBuff.ownerId)) || ((intSet = enemy.buffThrowBackAffectedBy) != null && intSet.size >= 3)) {
            throwBackBuff.free();
            return false;
        } else if (super.addBuff(enemy, (Enemy) throwBackBuff)) {
            if (enemy.buffThrowBackAffectedBy == null) {
                enemy.buffThrowBackAffectedBy = new IntSet();
            }
            enemy.buffThrowBackAffectedBy.add(throwBackBuff.ownerId);
            return true;
        } else {
            return false;
        }
    }
}
