package com.android.p030dx.dex.file;

import p015b2.C0432d;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p102k1.C4427n;
import p218x1.C7212d0;
/* renamed from: com.android.dx.dex.file.StringDataItem */
/* loaded from: classes.dex */
public final class StringDataItem extends OffsettedItem {
    private final C7212d0 value;

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_STRING_DATA_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.value.m2116C();
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public int compareTo0(OffsettedItem offsettedItem) {
        return this.value.compareTo(((StringDataItem) offsettedItem).value);
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        C0432d m2113n = this.value.m2113n();
        int m2111x = this.value.m2111x();
        if (interfaceC0428a.mo26499j()) {
            int m16522c = C4427n.m16522c(m2111x);
            interfaceC0428a.mo26502d(m16522c, "utf16_size: " + C0438g.m26475j(m2111x));
            interfaceC0428a.mo26502d(m2113n.m26506q() + 1, this.value.m2116C());
        }
        interfaceC0428a.mo26443h(m2111x);
        interfaceC0428a.mo26442k(m2113n);
        interfaceC0428a.writeByte(0);
    }

    public StringDataItem(C7212d0 c7212d0) {
        super(1, writeSize(c7212d0));
        this.value = c7212d0;
    }

    private static int writeSize(C7212d0 c7212d0) {
        return C4427n.m16522c(c7212d0.m2111x()) + c7212d0.m2110z() + 1;
    }
}
