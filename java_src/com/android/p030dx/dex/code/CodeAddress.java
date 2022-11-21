package com.android.p030dx.dex.code;

import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.CodeAddress */
/* loaded from: classes.dex */
public final class CodeAddress extends ZeroSizeInsn {
    private final boolean bindsClosely;

    public CodeAddress(C7167w c7167w) {
        this(c7167w, false);
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        return null;
    }

    public boolean getBindsClosely() {
        return this.bindsClosely;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String listingString0(boolean z) {
        return "code-address";
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public final DalvInsn withRegisters(C7160r c7160r) {
        return new CodeAddress(getPosition());
    }

    public CodeAddress(C7167w c7167w, boolean z) {
        super(c7167w);
        this.bindsClosely = z;
    }
}
