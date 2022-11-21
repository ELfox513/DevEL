package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7236x;
import p218x1.C7205a0;
/* renamed from: com.android.dx.dex.file.MemberIdItem */
/* loaded from: classes.dex */
public abstract class MemberIdItem extends IdItem {
    private final AbstractC7236x cst;

    public final AbstractC7236x getRef() {
        return this.cst;
    }

    public abstract int getTypoidIdx(DexFile dexFile);

    public abstract String getTypoidName();

    @Override // com.android.p030dx.dex.file.Item
    public int writeSize() {
        return 8;
    }

    public MemberIdItem(AbstractC7236x abstractC7236x) {
        super(abstractC7236x.m2054n());
        this.cst = abstractC7236x;
    }

    @Override // com.android.p030dx.dex.file.IdItem, com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        super.addContents(dexFile);
        dexFile.m24483i().intern(getRef().m2053u().m2128x());
    }

    @Override // com.android.p030dx.dex.file.Item
    public final void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        StringIdsSection m24483i = dexFile.m24483i();
        C7205a0 m2053u = this.cst.m2053u();
        int indexOf = typeIds.indexOf(getDefiningClass());
        int indexOf2 = m24483i.indexOf(m2053u.m2128x());
        int typoidIdx = getTypoidIdx(dexFile);
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, indexString() + ' ' + this.cst.toHuman());
            StringBuilder sb = new StringBuilder();
            sb.append("  class_idx: ");
            sb.append(C0438g.m26478g(indexOf));
            interfaceC0428a.mo26502d(2, sb.toString());
            interfaceC0428a.mo26502d(2, String.format("  %-10s %s", getTypoidName() + ':', C0438g.m26478g(typoidIdx)));
            interfaceC0428a.mo26502d(4, "  name_idx:  " + C0438g.m26475j(indexOf2));
        }
        interfaceC0428a.writeShort(indexOf);
        interfaceC0428a.writeShort(typoidIdx);
        interfaceC0428a.writeInt(indexOf2);
    }
}
