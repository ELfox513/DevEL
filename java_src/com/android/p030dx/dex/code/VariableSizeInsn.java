package com.android.p030dx.dex.code;

import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.VariableSizeInsn */
/* loaded from: classes.dex */
public abstract class VariableSizeInsn extends DalvInsn {
    public VariableSizeInsn(C7167w c7167w, C7160r c7160r) {
        super(Dops.SPECIAL_FORMAT, c7167w, c7160r);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final DalvInsn withOpcode(Dop dop) {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final DalvInsn withRegisterOffset(int i) {
        return withRegisters(getRegisters().m2338K(i));
    }
}
