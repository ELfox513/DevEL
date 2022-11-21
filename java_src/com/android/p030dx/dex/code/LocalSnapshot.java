package com.android.p030dx.dex.code;

import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7163s;
import p210w1.C7167w;
import p234z1.AbstractC7565p;
/* renamed from: com.android.dx.dex.code.LocalSnapshot */
/* loaded from: classes.dex */
public final class LocalSnapshot extends ZeroSizeInsn {
    private final C7163s locals;

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        return this.locals.toString();
    }

    public C7163s getLocals() {
        return this.locals;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withMapper(AbstractC7565p abstractC7565p) {
        return new LocalSnapshot(getPosition(), abstractC7565p.m1192d(this.locals));
    }

    @Override // com.android.p030dx.dex.code.ZeroSizeInsn, com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisterOffset(int i) {
        return new LocalSnapshot(getPosition(), this.locals.m2320J(i));
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new LocalSnapshot(getPosition(), this.locals);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String listingString0(boolean z) {
        int size = this.locals.size();
        int m2327B = this.locals.m2327B();
        StringBuilder sb = new StringBuilder((size * 40) + 100);
        sb.append("local-snapshot");
        for (int i = 0; i < m2327B; i++) {
            C7157q m2318z = this.locals.m2318z(i);
            if (m2318z != null) {
                sb.append("\n  ");
                sb.append(LocalStart.localString(m2318z));
            }
        }
        return sb.toString();
    }

    public LocalSnapshot(C7167w c7167w, C7163s c7163s) {
        super(c7167w);
        if (c7163s != null) {
            this.locals = c7163s;
            return;
        }
        throw new NullPointerException("locals == null");
    }
}
