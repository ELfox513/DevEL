package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.C7212d0;
import p218x1.C7214e0;
/* renamed from: com.android.dx.dex.file.TypeIdItem */
/* loaded from: classes.dex */
public final class TypeIdItem extends IdItem {
    public TypeIdItem(C7214e0 c7214e0) {
        super(c7214e0);
    }

    @Override // com.android.p030dx.dex.file.IdItem, com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        dexFile.m24483i().intern(getDefiningClass().m2096z());
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_TYPE_ID_ITEM;
    }

    @Override // com.android.p030dx.dex.file.Item
    public int writeSize() {
        return 4;
    }

    @Override // com.android.p030dx.dex.file.Item
    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        C7212d0 m2096z = getDefiningClass().m2096z();
        int indexOf = dexFile.m24483i().indexOf(m2096z);
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, indexString() + ' ' + m2096z.toHuman());
            StringBuilder sb = new StringBuilder();
            sb.append("  descriptor_idx: ");
            sb.append(C0438g.m26475j(indexOf));
            interfaceC0428a.mo26502d(4, sb.toString());
        }
        interfaceC0428a.writeInt(indexOf);
    }
}
