package com.android.p030dx.dex.file;

import java.io.PrintWriter;
import p015b2.InterfaceC0428a;
import p015b2.InterfaceC0450r;
import p218x1.C7212d0;
/* renamed from: com.android.dx.dex.file.EncodedMember */
/* loaded from: classes.dex */
public abstract class EncodedMember implements InterfaceC0450r {
    private final int accessFlags;

    public abstract void addContents(DexFile dexFile);

    public abstract void debugPrint(PrintWriter printWriter, boolean z);

    public abstract int encode(DexFile dexFile, InterfaceC0428a interfaceC0428a, int i, int i2);

    public final int getAccessFlags() {
        return this.accessFlags;
    }

    public abstract C7212d0 getName();

    @Override // p015b2.InterfaceC0450r
    public abstract /* synthetic */ String toHuman();

    public EncodedMember(int i) {
        this.accessFlags = i;
    }
}
