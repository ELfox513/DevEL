package com.android.p030dx.dex.code;

import p015b2.C0438g;
import p210w1.C7160r;
import p210w1.C7167w;
import p218x1.AbstractC7204a;
import p218x1.C7212d0;
/* renamed from: com.android.dx.dex.code.CstInsn */
/* loaded from: classes.dex */
public final class CstInsn extends FixedSizeInsn {
    private int classIndex;
    private final AbstractC7204a constant;
    private int index;

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        return this.constant.toHuman();
    }

    public AbstractC7204a getConstant() {
        return this.constant;
    }

    public boolean hasClassIndex() {
        return this.classIndex >= 0;
    }

    public boolean hasIndex() {
        return this.index >= 0;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String cstString() {
        AbstractC7204a abstractC7204a = this.constant;
        if (abstractC7204a instanceof C7212d0) {
            return ((C7212d0) abstractC7204a).m2116C();
        }
        return abstractC7204a.toHuman();
    }

    public int getClassIndex() {
        int i = this.classIndex;
        if (i >= 0) {
            return i;
        }
        throw new IllegalStateException("class index not yet set");
    }

    public int getIndex() {
        int i = this.index;
        if (i >= 0) {
            return i;
        }
        throw new IllegalStateException("index not yet set for " + this.constant);
    }

    public void setClassIndex(int i) {
        if (i >= 0) {
            if (this.classIndex < 0) {
                this.classIndex = i;
                return;
            }
            throw new IllegalStateException("class index already set");
        }
        throw new IllegalArgumentException("index < 0");
    }

    public void setIndex(int i) {
        if (i >= 0) {
            if (this.index < 0) {
                this.index = i;
                return;
            }
            throw new IllegalStateException("index already set");
        }
        throw new IllegalArgumentException("index < 0");
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withOpcode(Dop dop) {
        CstInsn cstInsn = new CstInsn(dop, getPosition(), getRegisters(), this.constant);
        int i = this.index;
        if (i >= 0) {
            cstInsn.setIndex(i);
        }
        int i2 = this.classIndex;
        if (i2 >= 0) {
            cstInsn.setClassIndex(i2);
        }
        return cstInsn;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        CstInsn cstInsn = new CstInsn(getOpcode(), getPosition(), c7160r, this.constant);
        int i = this.index;
        if (i >= 0) {
            cstInsn.setIndex(i);
        }
        int i2 = this.classIndex;
        if (i2 >= 0) {
            cstInsn.setClassIndex(i2);
        }
        return cstInsn;
    }

    public CstInsn(Dop dop, C7167w c7167w, C7160r c7160r, AbstractC7204a abstractC7204a) {
        super(dop, c7167w, c7160r);
        if (abstractC7204a != null) {
            this.constant = abstractC7204a;
            this.index = -1;
            this.classIndex = -1;
            return;
        }
        throw new NullPointerException("constant == null");
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String cstComment() {
        if (!hasIndex()) {
            return "";
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append(getConstant().mo2042j());
        sb.append('@');
        int i = this.index;
        if (i < 65536) {
            sb.append(C0438g.m26478g(i));
        } else {
            sb.append(C0438g.m26475j(i));
        }
        return sb.toString();
    }
}
