package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.SimpleInsn;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
/* renamed from: com.android.dx.dex.code.form.Form11x */
/* loaded from: classes.dex */
public final class Form11x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form11x();

    private Form11x() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 1;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return "";
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
        return dalvInsn.getRegisters().m2347A(0).m2369N();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        if ((dalvInsn instanceof SimpleInsn) && registers.size() == 1 && InsnFormat.unsignedFitsInByte(registers.m2347A(0).m2380B())) {
            return true;
        }
        return false;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, dalvInsn.getRegisters().m2347A(0).m2380B()));
    }
}
