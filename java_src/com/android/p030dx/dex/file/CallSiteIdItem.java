package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.C7219h;
import p218x1.C7222j;
/* renamed from: com.android.dx.dex.file.CallSiteIdItem */
/* loaded from: classes.dex */
public final class CallSiteIdItem extends IndexedItem implements Comparable {
    private static final int ITEM_SIZE = 4;

    /* renamed from: a */
    public final C7222j f3103a;

    /* renamed from: b */
    public CallSiteItem f3104b = null;

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_CALL_SITE_ID_ITEM;
    }

    @Override // com.android.p030dx.dex.file.Item
    public int writeSize() {
        return 4;
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        C7219h m2084n = this.f3103a.m2084n();
        CallSiteIdsSection callSiteIds = dexFile.getCallSiteIds();
        CallSiteItem m24492b = callSiteIds.m24492b(m2084n);
        if (m24492b == null) {
            MixedItemSection m24490b = dexFile.m24490b();
            m24492b = new CallSiteItem(m2084n);
            m24490b.add(m24492b);
            callSiteIds.m24493a(m2084n, m24492b);
        }
        this.f3104b = m24492b;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.f3103a.compareTo(((CallSiteIdItem) obj).f3103a);
    }

    @Override // com.android.p030dx.dex.file.Item
    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int absoluteOffset = this.f3104b.getAbsoluteOffset();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, indexString() + ' ' + this.f3103a.toString());
            StringBuilder sb = new StringBuilder();
            sb.append("call_site_off: ");
            sb.append(C0438g.m26475j(absoluteOffset));
            interfaceC0428a.mo26502d(4, sb.toString());
        }
        interfaceC0428a.writeInt(absoluteOffset);
    }

    public CallSiteIdItem(C7222j c7222j) {
        this.f3103a = c7222j;
    }
}
