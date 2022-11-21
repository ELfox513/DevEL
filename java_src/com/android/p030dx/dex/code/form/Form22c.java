package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.CstInsn;
import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p218x1.AbstractC7204a;
import p218x1.C7214e0;
import p218x1.C7226n;
/* renamed from: com.android.dx.dex.code.form.Form22c */
/* loaded from: classes.dex */
public final class Form22c extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form22c();

    private Form22c() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return z ? dalvInsn.cstComment() : "";
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(2);
        bitSet.set(0, InsnFormat.unsignedFitsInNibble(registers.m2347A(0).m2380B()));
        bitSet.set(1, InsnFormat.unsignedFitsInNibble(registers.m2347A(1).m2380B()));
        return bitSet;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        return registers.m2347A(0).m2369N() + ", " + registers.m2347A(1).m2369N() + ", " + dalvInsn.cstString();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        if (!(dalvInsn instanceof CstInsn) || registers.size() != 2 || !InsnFormat.unsignedFitsInNibble(registers.m2347A(0).m2380B()) || !InsnFormat.unsignedFitsInNibble(registers.m2347A(1).m2380B())) {
            return false;
        }
        CstInsn cstInsn = (CstInsn) dalvInsn;
        if (!InsnFormat.unsignedFitsInShort(cstInsn.getIndex())) {
            return false;
        }
        AbstractC7204a constant = cstInsn.getConstant();
        if (!(constant instanceof C7214e0) && !(constant instanceof C7226n)) {
            return false;
        }
        return true;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, InsnFormat.makeByte(registers.m2347A(0).m2380B(), registers.m2347A(1).m2380B())), (short) ((CstInsn) dalvInsn).getIndex());
    }
}
