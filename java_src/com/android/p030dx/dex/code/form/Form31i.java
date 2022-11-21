package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.CstInsn;
import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7234v;
/* renamed from: com.android.dx.dex.code.form.Form31i */
/* loaded from: classes.dex */
public final class Form31i extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form31i();

    private Form31i() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return InsnFormat.literalBitsComment((AbstractC7234v) ((CstInsn) dalvInsn).getConstant(), 32);
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(1);
        bitSet.set(0, InsnFormat.unsignedFitsInByte(registers.m2347A(0).m2380B()));
        return bitSet;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        return registers.m2347A(0).m2369N() + ", " + InsnFormat.literalBitsString((AbstractC7234v) ((CstInsn) dalvInsn).getConstant());
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        if (!(dalvInsn instanceof CstInsn) || registers.size() != 1 || !InsnFormat.unsignedFitsInByte(registers.m2347A(0).m2380B())) {
            return false;
        }
        AbstractC7204a constant = ((CstInsn) dalvInsn).getConstant();
        if (!(constant instanceof AbstractC7234v)) {
            return false;
        }
        return ((AbstractC7234v) constant).mo2058x();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, registers.m2347A(0).m2380B()), ((AbstractC7234v) ((CstInsn) dalvInsn).getConstant()).mo2057z());
    }
}
