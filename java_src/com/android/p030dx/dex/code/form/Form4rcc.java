package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.MultiCstInsn;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p218x1.C7207b0;
import p218x1.C7238z;
/* renamed from: com.android.dx.dex.code.form.Form4rcc */
/* loaded from: classes.dex */
public final class Form4rcc extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form4rcc();

    private Form4rcc() {
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
        MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
        short s = 0;
        short index = (short) multiCstInsn.getIndex(0);
        short index2 = (short) multiCstInsn.getIndex(1);
        C7160r registers = dalvInsn.getRegisters();
        if (registers.size() > 0) {
            s = (short) registers.m2347A(0).m2380B();
        }
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, registers.m2346B()), index, s, index2);
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return InsnFormat.regRangeString(dalvInsn.getRegisters()) + ", " + dalvInsn.cstString();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if (!(dalvInsn instanceof MultiCstInsn)) {
            return false;
        }
        MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
        int index = multiCstInsn.getIndex(0);
        int index2 = multiCstInsn.getIndex(1);
        if (!InsnFormat.unsignedFitsInShort(index) || !InsnFormat.unsignedFitsInShort(index2) || !(multiCstInsn.getConstant(0) instanceof C7238z) || !(multiCstInsn.getConstant(1) instanceof C7207b0)) {
            return false;
        }
        C7160r registers = multiCstInsn.getRegisters();
        int size = registers.size();
        if (size == 0) {
            return true;
        }
        if (!InsnFormat.unsignedFitsInByte(registers.m2346B()) || !InsnFormat.unsignedFitsInShort(size) || !InsnFormat.unsignedFitsInShort(registers.m2347A(0).m2380B()) || !InsnFormat.isRegListSequential(registers)) {
            return false;
        }
        return true;
    }
}
