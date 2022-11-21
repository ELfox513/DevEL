package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: com.android.dx.dex.file.TypeListItem */
/* loaded from: classes.dex */
public final class TypeListItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int ELEMENT_SIZE = 2;
    private static final int HEADER_SIZE = 4;
    private final InterfaceC7404e list;

    public InterfaceC7404e getList() {
        return this.list;
    }

    public int hashCode() {
        return C7401b.m1556C(this.list);
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_TYPE_LIST;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        throw new RuntimeException("unsupported");
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public int compareTo0(OffsettedItem offsettedItem) {
        return C7401b.m1548x(this.list, ((TypeListItem) offsettedItem).list);
    }

    public TypeListItem(InterfaceC7404e interfaceC7404e) {
        super(4, (interfaceC7404e.size() * 2) + 4);
        this.list = interfaceC7404e;
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int size = this.list.size();
        for (int i = 0; i < size; i++) {
            typeIds.intern(this.list.getType(i));
        }
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int size = this.list.size();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, offsetString() + " type_list");
            interfaceC0428a.mo26502d(4, "  size: " + C0438g.m26475j(size));
            for (int i = 0; i < size; i++) {
                C7402c type = this.list.getType(i);
                int indexOf = typeIds.indexOf(type);
                interfaceC0428a.mo26502d(2, "  " + C0438g.m26478g(indexOf) + " // " + type.toHuman());
            }
        }
        interfaceC0428a.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            interfaceC0428a.writeShort(typeIds.indexOf(this.list.getType(i2)));
        }
    }
}
