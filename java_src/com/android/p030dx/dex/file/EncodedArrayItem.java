package com.android.p030dx.dex.file;

import p015b2.C0435e;
import p015b2.InterfaceC0428a;
import p218x1.C7210d;
/* renamed from: com.android.dx.dex.file.EncodedArrayItem */
/* loaded from: classes.dex */
public final class EncodedArrayItem extends OffsettedItem {
    private static final int ALIGNMENT = 1;
    private final C7210d array;
    private byte[] encodedForm;

    public EncodedArrayItem(C7210d c7210d) {
        super(1, -1);
        if (c7210d != null) {
            this.array = c7210d;
            this.encodedForm = null;
            return;
        }
        throw new NullPointerException("array == null");
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        ValueEncoder.addContents(dexFile, this.array);
    }

    public int hashCode() {
        return this.array.hashCode();
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ENCODED_ARRAY_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.array.toHuman();
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public int compareTo0(OffsettedItem offsettedItem) {
        return this.array.compareTo(((EncodedArrayItem) offsettedItem).array);
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        C0435e c0435e = new C0435e();
        new ValueEncoder(section.getFile(), c0435e).writeArray(this.array, false);
        byte[] m26493r = c0435e.m26493r();
        this.encodedForm = m26493r;
        setWriteSize(m26493r.length);
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, offsetString() + " encoded array");
            new ValueEncoder(dexFile, interfaceC0428a).writeArray(this.array, true);
            return;
        }
        interfaceC0428a.write(this.encodedForm);
    }
}
