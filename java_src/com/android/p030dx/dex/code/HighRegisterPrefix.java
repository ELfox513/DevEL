package com.android.p030dx.dex.code;

import p015b2.InterfaceC0428a;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.HighRegisterPrefix */
/* loaded from: classes.dex */
public final class HighRegisterPrefix extends VariableSizeInsn {
    private SimpleInsn[] insns;

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        return null;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new HighRegisterPrefix(getPosition(), c7160r);
    }

    private void calculateInsnsIfNecessary() {
        if (this.insns != null) {
            return;
        }
        C7160r registers = getRegisters();
        int size = registers.size();
        this.insns = new SimpleInsn[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C7157q m2347A = registers.m2347A(i2);
            this.insns[i2] = moveInsnFor(m2347A, i);
            i += m2347A.m2355x();
        }
    }

    private static SimpleInsn moveInsnFor(C7157q c7157q, int i) {
        return DalvInsn.makeMove(C7167w.f36439d, C7157q.m2373J(i, c7157q.getType()), c7157q);
    }

    public HighRegisterPrefix(C7167w c7167w, C7160r c7160r) {
        super(c7167w, c7160r);
        if (c7160r.size() != 0) {
            this.insns = null;
            return;
        }
        throw new IllegalArgumentException("registers.size() == 0");
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public int codeSize() {
        calculateInsnsIfNecessary();
        int i = 0;
        for (SimpleInsn simpleInsn : this.insns) {
            i += simpleInsn.codeSize();
        }
        return i;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String listingString0(boolean z) {
        C7160r registers = getRegisters();
        int size = registers.size();
        StringBuilder sb = new StringBuilder(100);
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C7157q m2347A = registers.m2347A(i2);
            SimpleInsn moveInsnFor = moveInsnFor(m2347A, i);
            if (i2 != 0) {
                sb.append('\n');
            }
            sb.append(moveInsnFor.listingString0(z));
            i += m2347A.m2355x();
        }
        return sb.toString();
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public void writeTo(InterfaceC0428a interfaceC0428a) {
        calculateInsnsIfNecessary();
        for (SimpleInsn simpleInsn : this.insns) {
            simpleInsn.writeTo(interfaceC0428a);
        }
    }
}
