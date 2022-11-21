package com.android.p030dx.dex.file;

import java.util.ArrayList;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.file.MapItem */
/* loaded from: classes.dex */
public final class MapItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int WRITE_SIZE = 12;
    private final Item firstItem;
    private final int itemCount;
    private final Item lastItem;
    private final Section section;
    private final ItemType type;

    private MapItem(ItemType itemType, Section section, Item item, Item item2, int i) {
        super(4, 12);
        if (itemType == null) {
            throw new NullPointerException("type == null");
        }
        if (section == null) {
            throw new NullPointerException("section == null");
        }
        if (item == null) {
            throw new NullPointerException("firstItem == null");
        }
        if (item2 == null) {
            throw new NullPointerException("lastItem == null");
        }
        if (i > 0) {
            this.type = itemType;
            this.section = section;
            this.firstItem = item;
            this.lastItem = item2;
            this.itemCount = i;
            return;
        }
        throw new IllegalArgumentException("itemCount <= 0");
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_MAP_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public final String toHuman() {
        return toString();
    }

    public static void addMap(Section[] sectionArr, MixedItemSection mixedItemSection) {
        if (sectionArr != null) {
            if (mixedItemSection.items().size() == 0) {
                ArrayList arrayList = new ArrayList(50);
                for (Section section : sectionArr) {
                    ItemType itemType = null;
                    Item item = null;
                    Item item2 = null;
                    int i = 0;
                    for (Item item3 : section.items()) {
                        ItemType itemType2 = item3.itemType();
                        if (itemType2 != itemType) {
                            if (i != 0) {
                                arrayList.add(new MapItem(itemType, section, item, item2, i));
                            }
                            item = item3;
                            itemType = itemType2;
                            i = 0;
                        }
                        i++;
                        item2 = item3;
                    }
                    if (i != 0) {
                        arrayList.add(new MapItem(itemType, section, item, item2, i));
                    } else if (section == mixedItemSection) {
                        arrayList.add(new MapItem(mixedItemSection));
                    }
                }
                mixedItemSection.add(new UniformListItem(ItemType.TYPE_MAP_LIST, arrayList));
                return;
            }
            throw new IllegalArgumentException("mapSection.items().size() != 0");
        }
        throw new NullPointerException("sections == null");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(MapItem.class.getName());
        sb.append('{');
        sb.append(this.section.toString());
        sb.append(' ');
        sb.append(this.type.toHuman());
        sb.append('}');
        return sb.toString();
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int absoluteItemOffset;
        int mapValue = this.type.getMapValue();
        Item item = this.firstItem;
        if (item == null) {
            absoluteItemOffset = this.section.getFileOffset();
        } else {
            absoluteItemOffset = this.section.getAbsoluteItemOffset(item);
        }
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, offsetString() + ' ' + this.type.getTypeName() + " map");
            interfaceC0428a.mo26502d(2, "  type:   " + C0438g.m26478g(mapValue) + " // " + this.type.toString());
            interfaceC0428a.mo26502d(2, "  unused: 0");
            StringBuilder sb = new StringBuilder();
            sb.append("  size:   ");
            sb.append(C0438g.m26475j(this.itemCount));
            interfaceC0428a.mo26502d(4, sb.toString());
            interfaceC0428a.mo26502d(4, "  offset: " + C0438g.m26475j(absoluteItemOffset));
        }
        interfaceC0428a.writeShort(mapValue);
        interfaceC0428a.writeShort(0);
        interfaceC0428a.writeInt(this.itemCount);
        interfaceC0428a.writeInt(absoluteItemOffset);
    }

    private MapItem(Section section) {
        super(4, 12);
        if (section != null) {
            this.type = ItemType.TYPE_MAP_LIST;
            this.section = section;
            this.firstItem = null;
            this.lastItem = null;
            this.itemCount = 1;
            return;
        }
        throw new NullPointerException("section == null");
    }
}
