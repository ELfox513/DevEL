package com.android.p030dx.dex.code;

import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7167w;
import p234z1.AbstractC7565p;
/* renamed from: com.android.dx.dex.code.LocalStart */
/* loaded from: classes.dex */
public final class LocalStart extends ZeroSizeInsn {
    private final C7157q local;

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        return this.local.toString();
    }

    public C7157q getLocal() {
        return this.local;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String listingString0(boolean z) {
        return "local-start " + localString(this.local);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withMapper(AbstractC7565p abstractC7565p) {
        return new LocalStart(getPosition(), abstractC7565p.mo1034b(this.local));
    }

    @Override // com.android.p030dx.dex.code.ZeroSizeInsn, com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisterOffset(int i) {
        return new LocalStart(getPosition(), this.local.m2365R(i));
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new LocalStart(getPosition(), this.local);
    }

    public static String localString(C7157q c7157q) {
        return c7157q.m2369N() + ' ' + c7157q.m2354z().toString() + ": " + c7157q.m2379C().toHuman();
    }

    public LocalStart(C7167w c7167w, C7157q c7157q) {
        super(c7167w);
        if (c7157q != null) {
            this.local = c7157q;
            return;
        }
        throw new NullPointerException("local == null");
    }
}
