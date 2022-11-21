package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.C7212d0;
/* renamed from: com.android.dx.dex.file.StringIdItem */
/* loaded from: classes.dex */
public final class StringIdItem extends IndexedItem implements Comparable {
    private StringDataItem data;
    private final C7212d0 value;

    public StringDataItem getData() {
        return this.data;
    }

    public C7212d0 getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_STRING_ID_ITEM;
    }

    @Override // com.android.p030dx.dex.file.Item
    public int writeSize() {
        return 4;
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        if (this.data == null) {
            MixedItemSection m24484h = dexFile.m24484h();
            StringDataItem stringDataItem = new StringDataItem(this.value);
            this.data = stringDataItem;
            m24484h.add(stringDataItem);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.value.compareTo(((StringIdItem) obj).value);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StringIdItem)) {
            return false;
        }
        return this.value.equals(((StringIdItem) obj).value);
    }

    @Override // com.android.p030dx.dex.file.Item
    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int absoluteOffset = this.data.getAbsoluteOffset();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, indexString() + ' ' + this.value.m2115D(100));
            StringBuilder sb = new StringBuilder();
            sb.append("  string_data_off: ");
            sb.append(C0438g.m26475j(absoluteOffset));
            interfaceC0428a.mo26502d(4, sb.toString());
        }
        interfaceC0428a.writeInt(absoluteOffset);
    }

    public StringIdItem(C7212d0 c7212d0) {
        if (c7212d0 != null) {
            this.value = c7212d0;
            this.data = null;
            return;
        }
        throw new NullPointerException("value == null");
    }
}
