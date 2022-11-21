package com.android.p030dx.dex.file;

import p015b2.C0435e;
import p015b2.InterfaceC0428a;
import p218x1.C7219h;
/* renamed from: com.android.dx.dex.file.CallSiteItem */
/* loaded from: classes.dex */
public final class CallSiteItem extends OffsettedItem {
    private byte[] encodedForm;
    private final C7219h value;

    private static int writeSize(C7219h c7219h) {
        return -1;
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        ValueEncoder.addContents(dexFile, this.value);
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ENCODED_ARRAY_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.value.toHuman();
    }

    public String toString() {
        return this.value.toString();
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        C0435e c0435e = new C0435e();
        new ValueEncoder(section.getFile(), c0435e).writeArray(this.value, true);
        byte[] m26493r = c0435e.m26493r();
        this.encodedForm = m26493r;
        setWriteSize(m26493r.length);
    }

    public CallSiteItem(C7219h c7219h) {
        super(1, writeSize(c7219h));
        this.value = c7219h;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, offsetString() + " call site");
            new ValueEncoder(dexFile, interfaceC0428a).writeArray(this.value, true);
            return;
        }
        interfaceC0428a.write(this.encodedForm);
    }
}
