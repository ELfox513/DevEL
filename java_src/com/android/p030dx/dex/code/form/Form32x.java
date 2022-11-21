package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.SimpleInsn;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
/* renamed from: com.android.dx.dex.code.form.Form32x */
/* loaded from: classes.dex */
public final class Form32x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form32x();

    private Form32x() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return "";
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(2);
        bitSet.set(0, InsnFormat.unsignedFitsInShort(registers.m2347A(0).m2380B()));
        bitSet.set(1, InsnFormat.unsignedFitsInShort(registers.m2347A(1).m2380B()));
        return bitSet;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        return registers.m2347A(0).m2369N() + ", " + registers.m2347A(1).m2369N();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        if ((dalvInsn instanceof SimpleInsn) && registers.size() == 2 && InsnFormat.unsignedFitsInShort(registers.m2347A(0).m2380B()) && InsnFormat.unsignedFitsInShort(registers.m2347A(1).m2380B())) {
            return true;
        }
        return false;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, 0), (short) registers.m2347A(0).m2380B(), (short) registers.m2347A(1).m2380B());
    }
}
