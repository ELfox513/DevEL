package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.CstInsn;
import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7157q;
import p210w1.C7160r;
import p218x1.AbstractC7204a;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7226n;
/* renamed from: com.android.dx.dex.code.form.Form31c */
/* loaded from: classes.dex */
public final class Form31c extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form31c();

    private Form31c() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return z ? dalvInsn.cstComment() : "";
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        C7157q m2347A;
        if (!(dalvInsn instanceof CstInsn)) {
            return false;
        }
        C7160r registers = dalvInsn.getRegisters();
        int size = registers.size();
        if (size != 1) {
            if (size != 2) {
                return false;
            }
            m2347A = registers.m2347A(0);
            if (m2347A.m2380B() != registers.m2347A(1).m2380B()) {
                return false;
            }
        } else {
            m2347A = registers.m2347A(0);
        }
        if (!InsnFormat.unsignedFitsInByte(m2347A.m2380B())) {
            return false;
        }
        AbstractC7204a constant = ((CstInsn) dalvInsn).getConstant();
        if (!(constant instanceof C7214e0) && !(constant instanceof C7226n) && !(constant instanceof C7212d0)) {
            return false;
        }
        return true;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        int size = registers.size();
        BitSet bitSet = new BitSet(size);
        boolean unsignedFitsInByte = InsnFormat.unsignedFitsInByte(registers.m2347A(0).m2380B());
        if (size == 1) {
            bitSet.set(0, unsignedFitsInByte);
        } else if (registers.m2347A(0).m2380B() == registers.m2347A(1).m2380B()) {
            bitSet.set(0, unsignedFitsInByte);
            bitSet.set(1, unsignedFitsInByte);
        }
        return bitSet;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        return registers.m2347A(0).m2369N() + ", " + dalvInsn.cstString();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, registers.m2347A(0).m2380B()), ((CstInsn) dalvInsn).getIndex());
    }
}
