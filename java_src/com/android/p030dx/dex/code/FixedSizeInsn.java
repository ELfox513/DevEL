package com.android.p030dx.dex.code;

import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.FixedSizeInsn */
/* loaded from: classes.dex */
public abstract class FixedSizeInsn extends DalvInsn {
    public FixedSizeInsn(Dop dop, C7167w c7167w, C7160r c7160r) {
        super(dop, c7167w, c7160r);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final int codeSize() {
        return getOpcode().getFormat().codeSize();
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final String listingString0(boolean z) {
        return getOpcode().getFormat().listingString(this, z);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final DalvInsn withRegisterOffset(int i) {
        return withRegisters(getRegisters().m2338K(i));
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final void writeTo(InterfaceC0428a interfaceC0428a) {
        getOpcode().getFormat().writeTo(interfaceC0428a, this);
    }
}
