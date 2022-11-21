package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7213e;
import p218x1.C7226n;
import p218x1.C7229q;
import p218x1.C7237y;
/* renamed from: com.android.dx.dex.file.MethodHandleItem */
/* loaded from: classes.dex */
public final class MethodHandleItem extends IndexedItem {
    private final int ITEM_SIZE = 8;
    private final C7237y methodHandle;

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_METHOD_HANDLE_ITEM;
    }

    @Override // com.android.p030dx.dex.file.Item
    public int writeSize() {
        return 8;
    }

    private int getTargetIndex(DexFile dexFile) {
        AbstractC7204a m2044x = this.methodHandle.m2044x();
        if (this.methodHandle.m2043z()) {
            return dexFile.getFieldIds().indexOf((C7226n) m2044x);
        }
        if (this.methodHandle.m2051B()) {
            if (m2044x instanceof C7229q) {
                m2044x = ((C7229q) m2044x).m2073E();
            }
            return dexFile.getMethodIds().indexOf((AbstractC7213e) m2044x);
        }
        throw new IllegalStateException("Unhandled invocation type");
    }

    public MethodHandleItem(C7237y c7237y) {
        this.methodHandle = c7237y;
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        dexFile.getMethodHandles().intern(this.methodHandle);
    }

    @Override // com.android.p030dx.dex.file.Item
    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int targetIndex = getTargetIndex(dexFile);
        int m2046n = this.methodHandle.m2046n();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, indexString() + ' ' + this.methodHandle.toString());
            interfaceC0428a.mo26502d(2, "type:     " + C0438g.m26478g(m2046n) + (" // " + C7237y.m2045u(m2046n)));
            interfaceC0428a.mo26502d(2, "reserved: " + C0438g.m26478g(0));
            String str = " // " + this.methodHandle.m2044x().toString();
            if (this.methodHandle.m2043z()) {
                interfaceC0428a.mo26502d(2, "fieldId:  " + C0438g.m26478g(targetIndex) + str);
            } else {
                interfaceC0428a.mo26502d(2, "methodId: " + C0438g.m26478g(targetIndex) + str);
            }
            interfaceC0428a.mo26502d(2, "reserved: " + C0438g.m26478g(0));
        }
        interfaceC0428a.writeShort(m2046n);
        interfaceC0428a.writeShort(0);
        interfaceC0428a.writeShort(getTargetIndex(dexFile));
        interfaceC0428a.writeShort(0);
    }
}
