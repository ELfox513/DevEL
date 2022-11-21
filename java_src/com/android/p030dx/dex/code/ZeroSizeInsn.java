package com.android.p030dx.dex.code;

import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.ZeroSizeInsn */
/* loaded from: classes.dex */
public abstract class ZeroSizeInsn extends DalvInsn {
    public ZeroSizeInsn(C7167w c7167w) {
        super(Dops.SPECIAL_FORMAT, c7167w, C7160r.f36212a);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final int codeSize() {
        return 0;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final DalvInsn withOpcode(Dop dop) {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisterOffset(int i) {
        return withRegisters(getRegisters().m2338K(i));
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final void writeTo(InterfaceC0428a interfaceC0428a) {
    }
}
