package com.android.p030dx.dex.file;

import com.android.p030dx.dex.file.OffsettedItem;
import java.util.List;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.file.UniformListItem */
/* loaded from: classes.dex */
public final class UniformListItem<T extends OffsettedItem> extends OffsettedItem {
    private static final int HEADER_SIZE = 4;
    private final ItemType itemType;
    private final List<T> items;

    private static int getAlignment(List<? extends OffsettedItem> list) {
        try {
            return Math.max(4, list.get(0).getAlignment());
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("items.size() == 0");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("items == null");
        }
    }

    private int headerSize() {
        return getAlignment();
    }

    private static int writeSize(List<? extends OffsettedItem> list) {
        return (list.size() * list.get(0).writeSize()) + getAlignment(list);
    }

    public final List<T> getItems() {
        return this.items;
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return this.itemType;
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        for (T t : this.items) {
            t.addContents(dexFile);
        }
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public final String toHuman() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{");
        boolean z = true;
        for (T t : this.items) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(t.toHuman());
        }
        sb.append("}");
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(UniformListItem.class.getName());
        sb.append(this.items);
        return sb.toString();
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int size = this.items.size();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, offsetString() + " " + typeName());
            StringBuilder sb = new StringBuilder();
            sb.append("  size: ");
            sb.append(C0438g.m26475j(size));
            interfaceC0428a.mo26502d(4, sb.toString());
        }
        interfaceC0428a.writeInt(size);
        for (T t : this.items) {
            t.writeTo(dexFile, interfaceC0428a);
        }
    }

    public UniformListItem(ItemType itemType, List<T> list) {
        super(getAlignment(list), writeSize(list));
        if (itemType != null) {
            this.items = list;
            this.itemType = itemType;
            return;
        }
        throw new NullPointerException("itemType == null");
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        int headerSize = i + headerSize();
        int i2 = -1;
        int i3 = -1;
        boolean z = true;
        for (T t : this.items) {
            int writeSize = t.writeSize();
            if (z) {
                i3 = t.getAlignment();
                i2 = writeSize;
                z = false;
            } else if (writeSize == i2) {
                if (t.getAlignment() != i3) {
                    throw new UnsupportedOperationException("item alignment mismatch");
                }
            } else {
                throw new UnsupportedOperationException("item size mismatch");
            }
            headerSize = t.place(section, headerSize) + writeSize;
        }
    }
}
