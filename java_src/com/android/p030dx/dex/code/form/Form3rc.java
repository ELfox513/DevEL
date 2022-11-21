package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.CstInsn;
import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p218x1.AbstractC7204a;
import p218x1.C7214e0;
import p218x1.C7222j;
import p218x1.C7238z;
/* renamed from: com.android.dx.dex.code.form.Form3rc */
/* loaded from: classes.dex */
public final class Form3rc extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form3rc();

    private Form3rc() {
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
    public String insnArgString(DalvInsn dalvInsn) {
        return InsnFormat.regRangeString(dalvInsn.getRegisters()) + ", " + dalvInsn.cstString();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if (!(dalvInsn instanceof CstInsn)) {
            return false;
        }
        CstInsn cstInsn = (CstInsn) dalvInsn;
        int index = cstInsn.getIndex();
        AbstractC7204a constant = cstInsn.getConstant();
        if (!InsnFormat.unsignedFitsInShort(index)) {
            return false;
        }
        if (!(constant instanceof C7238z) && !(constant instanceof C7214e0) && !(constant instanceof C7222j)) {
            return false;
        }
        C7160r registers = cstInsn.getRegisters();
        registers.size();
        if (registers.size() != 0 && (!InsnFormat.isRegListSequential(registers) || !InsnFormat.unsignedFitsInShort(registers.m2347A(0).m2380B()) || !InsnFormat.unsignedFitsInByte(registers.m2346B()))) {
            return false;
        }
        return true;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        int index = ((CstInsn) dalvInsn).getIndex();
        int i = 0;
        if (registers.size() != 0) {
            i = registers.m2347A(0).m2380B();
        }
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, registers.m2346B()), (short) index, (short) i);
    }
}
