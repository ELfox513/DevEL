package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.SimpleInsn;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
/* renamed from: com.android.dx.dex.code.form.Form23x */
/* loaded from: classes.dex */
public final class Form23x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form23x();

    private Form23x() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return "";
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(3);
        bitSet.set(0, InsnFormat.unsignedFitsInByte(registers.m2347A(0).m2380B()));
        bitSet.set(1, InsnFormat.unsignedFitsInByte(registers.m2347A(1).m2380B()));
        bitSet.set(2, InsnFormat.unsignedFitsInByte(registers.m2347A(2).m2380B()));
        return bitSet;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        return registers.m2347A(0).m2369N() + ", " + registers.m2347A(1).m2369N() + ", " + registers.m2347A(2).m2369N();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        if ((dalvInsn instanceof SimpleInsn) && registers.size() == 3 && InsnFormat.unsignedFitsInByte(registers.m2347A(0).m2380B()) && InsnFormat.unsignedFitsInByte(registers.m2347A(1).m2380B()) && InsnFormat.unsignedFitsInByte(registers.m2347A(2).m2380B())) {
            return true;
        }
        return false;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, registers.m2347A(0).m2380B()), InsnFormat.codeUnit(registers.m2347A(1).m2380B(), registers.m2347A(2).m2380B()));
    }
}
