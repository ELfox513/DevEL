package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.SimpleInsn;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7157q;
import p210w1.C7160r;
/* renamed from: com.android.dx.dex.code.form.Form12x */
/* loaded from: classes.dex */
public final class Form12x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form12x();

    private Form12x() {
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
    public boolean isCompatible(DalvInsn dalvInsn) {
        C7157q m2347A;
        C7157q m2347A2;
        if (!(dalvInsn instanceof SimpleInsn)) {
            return false;
        }
        C7160r registers = dalvInsn.getRegisters();
        int size = registers.size();
        if (size != 2) {
            if (size != 3) {
                return false;
            }
            m2347A = registers.m2347A(1);
            m2347A2 = registers.m2347A(2);
            if (m2347A.m2380B() != registers.m2347A(0).m2380B()) {
                return false;
            }
        } else {
            m2347A = registers.m2347A(0);
            m2347A2 = registers.m2347A(1);
        }
        if (!InsnFormat.unsignedFitsInNibble(m2347A.m2380B()) || !InsnFormat.unsignedFitsInNibble(m2347A2.m2380B())) {
            return false;
        }
        return true;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        BitSet bitSet = new BitSet(2);
        int m2380B = registers.m2347A(0).m2380B();
        int m2380B2 = registers.m2347A(1).m2380B();
        int size = registers.size();
        if (size != 2) {
            if (size == 3) {
                if (m2380B != m2380B2) {
                    bitSet.set(0, false);
                    bitSet.set(1, false);
                } else {
                    boolean unsignedFitsInNibble = InsnFormat.unsignedFitsInNibble(m2380B2);
                    bitSet.set(0, unsignedFitsInNibble);
                    bitSet.set(1, unsignedFitsInNibble);
                }
                bitSet.set(2, InsnFormat.unsignedFitsInNibble(registers.m2347A(2).m2380B()));
            } else {
                throw new AssertionError();
            }
        } else {
            bitSet.set(0, InsnFormat.unsignedFitsInNibble(m2380B));
            bitSet.set(1, InsnFormat.unsignedFitsInNibble(m2380B2));
        }
        return bitSet;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        int size = registers.size();
        return registers.m2347A(size - 2).m2369N() + ", " + registers.m2347A(size - 1).m2369N();
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        C7160r registers = dalvInsn.getRegisters();
        int size = registers.size();
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, InsnFormat.makeByte(registers.m2347A(size - 2).m2380B(), registers.m2347A(size - 1).m2380B())));
    }
}
