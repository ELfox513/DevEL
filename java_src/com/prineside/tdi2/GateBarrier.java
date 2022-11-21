package com.prineside.tdi2;

import com.prineside.tdi2.enums.GateType;
/* loaded from: classes2.dex */
public abstract class GateBarrier extends Gate {
    public GateBarrier(GateType gateType) {
        super(gateType);
    }

    public abstract boolean canEnemyPass(Enemy enemy);
}
