package com.android.p030dx.dex.file;

import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.file.Item */
/* loaded from: classes.dex */
public abstract class Item {
    public abstract void addContents(DexFile dexFile);

    public abstract ItemType itemType();

    public final String typeName() {
        return itemType().toHuman();
    }

    public abstract int writeSize();

    public abstract void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a);
}
