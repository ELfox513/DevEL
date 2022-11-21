package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.TargetInsn;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.code.form.Form30t */
/* loaded from: classes.dex */
public final class Form30t extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form30t();

    private Form30t() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean branchFits(TargetInsn targetInsn) {
        return true;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 3;
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
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, 0), ((TargetInsn) dalvInsn).getTargetOffset());
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if ((dalvInsn instanceof TargetInsn) && dalvInsn.getRegisters().size() == 0) {
            return true;
        }
        return false;
    }
}
