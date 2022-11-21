package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import com.android.p030dx.dex.code.SimpleInsn;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.code.form.Form10x */
/* loaded from: classes.dex */
public final class Form10x extends InsnFormat {
    public static final InsnFormat THE_ONE = new Form10x();

    private Form10x() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        return 1;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        return "";
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        return "";
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        InsnFormat.write(interfaceC0428a, InsnFormat.opcodeUnit(dalvInsn, 0));
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        if ((dalvInsn instanceof SimpleInsn) && dalvInsn.getRegisters().size() == 0) {
            return true;
        }
        return false;
    }
}
