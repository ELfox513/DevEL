package com.android.p030dx.dex.code;

import p015b2.C0438g;
import p210w1.C7160r;
import p210w1.C7167w;
import p218x1.AbstractC7204a;
/* renamed from: com.android.dx.dex.code.MultiCstInsn */
/* loaded from: classes.dex */
public final class MultiCstInsn extends FixedSizeInsn {
    private static final int NOT_SET = -1;
    private int classIndex;
    private final AbstractC7204a[] constants;
    private final int[] index;

    public MultiCstInsn(Dop dop, C7167w c7167w, C7160r c7160r, AbstractC7204a[] abstractC7204aArr) {
        super(dop, c7167w, c7160r);
        if (abstractC7204aArr != null) {
            this.constants = abstractC7204aArr;
            this.index = new int[abstractC7204aArr.length];
            int i = 0;
            while (true) {
                int[] iArr = this.index;
                if (i < iArr.length) {
                    if (abstractC7204aArr[i] != null) {
                        iArr[i] = -1;
                        i++;
                    } else {
                        throw new NullPointerException("constants[i] == null");
                    }
                } else {
                    this.classIndex = -1;
                    return;
                }
            }
        } else {
            throw new NullPointerException("constants == null");
        }
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String cstString() {
        return argString();
    }

    public AbstractC7204a getConstant(int i) {
        return this.constants[i];
    }

    public int getNumberOfConstants() {
        return this.constants.length;
    }

    public boolean hasClassIndex() {
        return this.classIndex != -1;
    }

    public boolean hasIndex(int i) {
        return this.index[i] != -1;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withOpcode(Dop dop) {
        return new MultiCstInsn(dop, getPosition(), getRegisters(), this.constants, this.index, this.classIndex);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new MultiCstInsn(getOpcode(), getPosition(), c7160r, this.constants, this.index, this.classIndex);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.constants.length; i++) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(this.constants[i].toHuman());
        }
        return sb.toString();
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String cstComment() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.constants.length; i++) {
            if (!hasIndex(i)) {
                return "";
            }
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(getConstant(i).mo2042j());
            sb.append('@');
            int index = getIndex(i);
            if (index < 65536) {
                sb.append(C0438g.m26478g(index));
            } else {
                sb.append(C0438g.m26475j(index));
            }
        }
        return sb.toString();
    }

    public void setClassIndex(int i) {
        if (i >= 0) {
            if (!hasClassIndex()) {
                this.classIndex = i;
                return;
            }
            throw new IllegalStateException("class index already set");
        }
        throw new IllegalArgumentException("index < 0");
    }

    public void setIndex(int i, int i2) {
        if (i2 >= 0) {
            if (!hasIndex(i)) {
                this.index[i] = i2;
                return;
            }
            throw new IllegalStateException("index already set");
        }
        throw new IllegalArgumentException("index < 0");
    }

    public int getClassIndex() {
        if (hasClassIndex()) {
            return this.classIndex;
        }
        throw new IllegalStateException("class index not yet set");
    }

    public int getIndex(int i) {
        if (hasIndex(i)) {
            return this.index[i];
        }
        throw new IllegalStateException("index not yet set for constant " + i + " value = " + this.constants[i]);
    }

    private MultiCstInsn(Dop dop, C7167w c7167w, C7160r c7160r, AbstractC7204a[] abstractC7204aArr, int[] iArr, int i) {
        super(dop, c7167w, c7160r);
        this.constants = abstractC7204aArr;
        this.index = iArr;
        this.classIndex = i;
    }
}
