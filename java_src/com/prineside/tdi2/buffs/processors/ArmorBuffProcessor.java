package com.prineside.tdi2.buffs.processors;

import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.buffs.ArmorBuff;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ArmorBuffProcessor extends BuffProcessor<ArmorBuff> {
    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, ArmorBuff armorBuff) {
        return m22041b(enemy, armorBuff);
    }
}
