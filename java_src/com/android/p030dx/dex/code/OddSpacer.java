package com.android.p030dx.dex.code;

import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.OddSpacer */
/* loaded from: classes.dex */
public final class OddSpacer extends VariableSizeInsn {
    public OddSpacer(C7167w c7167w) {
        super(c7167w, C7160r.f36212a);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        return null;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public int codeSize() {
        return getAddress() & 1;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String listingString0(boolean z) {
        if (codeSize() == 0) {
            return null;
        }
        return "nop // spacer";
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new OddSpacer(getPosition());
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public void writeTo(InterfaceC0428a interfaceC0428a) {
        if (codeSize() != 0) {
            interfaceC0428a.writeShort(InsnFormat.codeUnit(0, 0));
        }
    }
}
