package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.CstInsn;
import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import java.util.BitSet;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7234v;
/* renamed from: com.android.dx.dex.code.form.Form21h */
/* loaded from: classes.dex */
public final class Form21h extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form21h();

    private Form21h() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 2;
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
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        int i;
        C7160r registers = dalvInsn.getRegisters();
        AbstractC7234v abstractC7234v = (AbstractC7234v) ((CstInsn) dalvInsn).getConstant();
        if (registers.m2347A(0).m2355x() == 1) {
            i = 32;
        } else {
            i = 64;
        }
        return InsnFormat.literalBitsComment(abstractC7234v, i);
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
        AbstractC7234v abstractC7234v = (AbstractC7234v) constant;
        if (registers.m2347A(0).m2355x() == 1) {
            if ((abstractC7234v.mo2057z() & MeshBuilder.MAX_INDEX) != 0) {
                return false;
            }
            return true;
        } else if ((abstractC7234v.mo2061A() & 281474976710655L) != 0) {
            return false;
        } else {
            return true;
        }
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        int mo2061A;
        C7160r registers = dalvInsn.getRegisters();
        AbstractC7234v abstractC7234v = (AbstractC7234v) ((CstInsn) dalvInsn).getConstant();
        if (registers.m2347A(0).m2355x() == 1) {
            mo2061A = abstractC7234v.mo2057z() >>> 16;
        } else {
            mo2061A = (int) (abstractC7234v.mo2061A() >>> 48);
        }
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, registers.m2347A(0).m2380B()), (short) mo2061A);
    }
}
