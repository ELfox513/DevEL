package com.android.p030dx.dex.file;

import java.util.Collection;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7204a;
/* renamed from: com.android.dx.dex.file.UniformItemSection */
/* loaded from: classes.dex */
public abstract class UniformItemSection extends Section {
    public UniformItemSection(String str, DexFile dexFile, int i) {
        super(str, dexFile, i);
    }

    public abstract IndexedItem get(AbstractC7204a abstractC7204a);

    public abstract void orderItems();

    @Override // com.android.p030dx.dex.file.Section
    public final int getAbsoluteItemOffset(Item item) {
        IndexedItem indexedItem = (IndexedItem) item;
        return getAbsoluteOffset(indexedItem.getIndex() * indexedItem.writeSize());
    }

    @Override // com.android.p030dx.dex.file.Section
    public final void prepare0() {
        DexFile file = getFile();
        orderItems();
        for (Item item : items()) {
            item.addContents(file);
        }
    }

    @Override // com.android.p030dx.dex.file.Section
    public final int writeSize() {
        Collection<? extends Item> items = items();
        int size = items.size();
        if (size == 0) {
            return 0;
        }
        return size * items.iterator().next().writeSize();
    }

    @Override // com.android.p030dx.dex.file.Section
    public final void writeTo0(InterfaceC0428a interfaceC0428a) {
        DexFile file = getFile();
        int alignment = getAlignment();
        for (Item item : items()) {
            item.writeTo(file, interfaceC0428a);
            interfaceC0428a.mo26441l(alignment);
        }
    }
}
