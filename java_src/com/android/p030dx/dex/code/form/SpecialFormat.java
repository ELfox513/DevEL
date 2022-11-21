package com.android.p030dx.dex.code.form;

import com.android.p030dx.dex.code.DalvInsn;
import com.android.p030dx.dex.code.InsnFormat;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.code.form.SpecialFormat */
/* loaded from: classes.dex */
public final class SpecialFormat extends InsnFormat {
    public static final InsnFormat THE_ONE = new SpecialFormat();

    private SpecialFormat() {
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public int codeSize() {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnArgString(DalvInsn dalvInsn) {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public String insnCommentString(DalvInsn dalvInsn, boolean z) {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public boolean isCompatible(DalvInsn dalvInsn) {
        return true;
    }

    @Override // com.android.p030dx.dex.code.InsnFormat
    public void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn) {
        throw new RuntimeException("unsupported");
    }
}
