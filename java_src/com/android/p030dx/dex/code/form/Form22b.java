package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.CstInsn;
import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7234v;
/* renamed from: com.android.dx.dex.code.form.Form22b */
/* loaded from: classes.dex */
public final class Form22b extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form22b();

    private Form22b() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return InsnFormat.literalBitsComment((AbstractC7234v) ((CstInsn) dalvInsn).getConstant(), 8);
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(2);
        bitSet.set(0, InsnFormat.unsignedFitsInByte(registers.m2347A(0).m2380B()));
        bitSet.set(1, InsnFormat.unsignedFitsInByte(registers.m2347A(1).m2380B()));
        return bitSet;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        return registers.m2347A(0).m2369N() + ", " + registers.m2347A(1).m2369N() + ", " + InsnFormat.literalBitsString((AbstractC7234v) ((CstInsn) dalvInsn).getConstant());
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        if (!(dalvInsn instanceof CstInsn) || registers.size() != 2 || !InsnFormat.unsignedFitsInByte(registers.m2347A(0).m2380B()) || !InsnFormat.unsignedFitsInByte(registers.m2347A(1).m2380B())) {
            return false;
        }
        AbstractC7204a constant = ((CstInsn) dalvInsn).getConstant();
        if (!(constant instanceof AbstractC7234v)) {
            return false;
        }
        AbstractC7234v abstractC7234v = (AbstractC7234v) constant;
        if (!abstractC7234v.mo2058x() || !InsnFormat.signedFitsInByte(abstractC7234v.mo2057z())) {
            return false;
        }
        return true;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, registers.m2347A(0).m2380B()), InsnFormat.codeUnit(registers.m2347A(1).m2380B(), ((AbstractC7234v) ((CstInsn) dalvInsn).getConstant()).mo2057z() & 255));
    }
}
