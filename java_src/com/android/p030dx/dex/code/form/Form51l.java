package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.CstInsn;
import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p218x1.AbstractC7233u;
import p218x1.AbstractC7234v;
/* renamed from: com.android.dx.dex.code.form.Form51l */
/* loaded from: classes.dex */
public final class Form51l extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form51l();

    private Form51l() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 5;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return InsnFormat.literalBitsComment((AbstractC7234v) ((CstInsn) dalvInsn).getConstant(), 64);
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
        return ((CstInsn) dalvInsn).getConstant() instanceof AbstractC7233u;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, registers.m2347A(0).m2380B()), ((AbstractC7233u) ((CstInsn) dalvInsn).getConstant()).mo2061A());
    }
}
