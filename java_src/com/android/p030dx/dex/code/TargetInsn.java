package com.android.p030dx.dex.code;

import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.TargetInsn */
/* loaded from: classes.dex */
public final class TargetInsn extends FixedSizeInsn {
    private CodeAddress target;

    public CodeAddress getTarget() {
        return this.target;
    }

    public int getTargetAddress() {
        return this.target.getAddress();
    }

    public int getTargetOffset() {
        return this.target.getAddress() - getAddress();
    }

    public boolean hasTargetOffset() {
        return hasAddress() && this.target.hasAddress();
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withOpcode(Dop dop) {
        return new TargetInsn(dop, getPosition(), getRegisters(), this.target);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new TargetInsn(getOpcode(), getPosition(), c7160r, this.target);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        CodeAddress codeAddress = this.target;
        if (codeAddress == null) {
            return "????";
        }
        return codeAddress.identifierString();
    }

    public TargetInsn(Dop dop, C7167w c7167w, C7160r c7160r, CodeAddress codeAddress) {
        super(dop, c7167w, c7160r);
        if (codeAddress != null) {
            this.target = codeAddress;
            return;
        }
        throw new NullPointerException("target == null");
    }

    public TargetInsn withNewTargetAndReversed(CodeAddress codeAddress) {
        return new TargetInsn(getOpcode().getOppositeTest(), getPosition(), getRegisters(), codeAddress);
    }
}
