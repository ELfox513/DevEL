package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.TargetInsn;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.code.form.Form10t */
/* loaded from: classes.dex */
public final class Form10t extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form10t();

    private Form10t() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 1;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return InsnFormat.branchString(dalvInsn);
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return InsnFormat.branchComment(dalvInsn);
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, ((TargetInsn) dalvInsn).getTargetOffset() & 255));
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if ((dalvInsn instanceof TargetInsn) && dalvInsn.getRegisters().size() == 0) {
            TargetInsn targetInsn = (TargetInsn) dalvInsn;
            if (targetInsn.hasTargetOffset()) {
                return branchFits(targetInsn);
            }
            return true;
        }
        return false;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean branchFits(TargetInsn targetInsn) {
        int targetOffset = targetInsn.getTargetOffset();
        if (targetOffset != 0 && InsnFormat.signedFitsInByte(targetOffset)) {
            return true;
        }
        return false;
    }
}
