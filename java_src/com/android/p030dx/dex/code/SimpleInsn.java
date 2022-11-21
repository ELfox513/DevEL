package com.android.p030dx.dex.code;

import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.SimpleInsn */
/* loaded from: classes.dex */
public final class SimpleInsn extends FixedSizeInsn {
    public SimpleInsn(Dop dop, C7167w c7167w, C7160r c7160r) {
        super(dop, c7167w, c7160r);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        return null;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withOpcode(Dop dop) {
        return new SimpleInsn(dop, getPosition(), getRegisters());
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new SimpleInsn(getOpcode(), getPosition(), c7160r);
    }
}
