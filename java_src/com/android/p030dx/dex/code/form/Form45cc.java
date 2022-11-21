package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.MultiCstInsn;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7157q;
import p210w1.C7160r;
import p218x1.C7207b0;
import p218x1.C7238z;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.code.form.Form45cc */
/* loaded from: classes.dex */
public final class Form45cc extends InsnFormat {
    private static final int MAX_NUM_OPS = 5;
    public static final InsnFormat THE_ONE = new Form45cc();

    private Form45cc() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 4;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return z ? dalvInsn.cstComment() : "";
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        int i;
        int i2;
        int i3;
        int i4;
        MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
        int i5 = 0;
        short index = (short) multiCstInsn.getIndex(0);
        short index2 = (short) multiCstInsn.getIndex(1);
        C7160r explicitize = explicitize(dalvInsn.getRegisters());
        int size = explicitize.size();
        if (size > 0) {
            i = explicitize.m2347A(0).m2380B();
        } else {
            i = 0;
        }
        if (size > 1) {
            i2 = explicitize.m2347A(1).m2380B();
        } else {
            i2 = 0;
        }
        if (size > 2) {
            i3 = explicitize.m2347A(2).m2380B();
        } else {
            i3 = 0;
        }
        if (size > 3) {
            i4 = explicitize.m2347A(3).m2380B();
        } else {
            i4 = 0;
        }
        if (size > 4) {
            i5 = explicitize.m2347A(4).m2380B();
        }
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, InsnFormat.makeByte(i5, size)), index, InsnFormat.codeUnit(i, i2, i3, i4), index2);
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if (!(dalvInsn instanceof MultiCstInsn)) {
            return false;
        }
        MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
        if (multiCstInsn.getNumberOfConstants() != 2) {
            return false;
        }
        int index = multiCstInsn.getIndex(0);
        int index2 = multiCstInsn.getIndex(1);
        if (!InsnFormat.unsignedFitsInShort(index) || !InsnFormat.unsignedFitsInShort(index2) || !(multiCstInsn.getConstant(0) instanceof C7238z) || !(multiCstInsn.getConstant(1) instanceof C7207b0) || wordCount(multiCstInsn.getRegisters()) < 0) {
            return false;
        }
        return true;
    }

    private static C7160r explicitize(C7160r c7160r) {
        int wordCount = wordCount(c7160r);
        int size = c7160r.size();
        if (wordCount == size) {
            return c7160r;
        }
        C7160r c7160r2 = new C7160r(wordCount);
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C7157q m2347A = c7160r.m2347A(i2);
            c7160r2.m2342F(i, m2347A);
            if (m2347A.m2355x() == 2) {
                c7160r2.m2342F(i + 1, C7157q.m2373J(m2347A.m2380B() + 1, C7402c.f37060B));
                i += 2;
            } else {
                i++;
            }
        }
        c7160r2.setImmutable();
        return c7160r2;
    }

    private static int wordCount(C7160r c7160r) {
        int size = c7160r.size();
        if (size > 5) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C7157q m2347A = c7160r.m2347A(i2);
            i += m2347A.m2355x();
            if (!InsnFormat.unsignedFitsInNibble((m2347A.m2380B() + m2347A.m2355x()) - 1)) {
                return -1;
            }
        }
        if (i > 5) {
            return -1;
        }
        return i;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        int size = registers.size();
        BitSet bitSet = new BitSet(size);
        for (int i = 0; i < size; i++) {
            C7157q m2347A = registers.m2347A(i);
            bitSet.set(i, InsnFormat.unsignedFitsInNibble((m2347A.m2380B() + m2347A.m2355x()) - 1));
        }
        return bitSet;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        C7160r explicitize = explicitize(dalvInsn.getRegisters());
        return InsnFormat.regListString(explicitize) + ", " + dalvInsn.cstString();
    }
}
