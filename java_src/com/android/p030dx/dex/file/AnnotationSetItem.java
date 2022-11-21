package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p201v1.C6969a;
import p201v1.C6971c;
/* renamed from: com.android.dx.dex.file.AnnotationSetItem */
/* loaded from: classes.dex */
public final class AnnotationSetItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int ENTRY_WRITE_SIZE = 4;
    private final C6971c annotations;
    private final AnnotationItem[] items;

    public C6971c getAnnotations() {
        return this.annotations;
    }

    public int hashCode() {
        return this.annotations.hashCode();
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ANNOTATION_SET_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        AnnotationItem.sortByTypeIdIndex(this.items);
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.annotations.toString();
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public int compareTo0(OffsettedItem offsettedItem) {
        return this.annotations.compareTo(((AnnotationSetItem) offsettedItem).annotations);
    }

    public AnnotationSetItem(C6971c c6971c, DexFile dexFile) {
        super(4, writeSize(c6971c));
        this.annotations = c6971c;
        this.items = new AnnotationItem[c6971c.size()];
        int i = 0;
        for (C6969a c6969a : c6971c.m2826D()) {
            this.items[i] = new AnnotationItem(c6969a, dexFile);
            i++;
        }
    }

    private static int writeSize(C6971c c6971c) {
        try {
            return (c6971c.size() * 4) + 4;
        } catch (NullPointerException unused) {
            throw new NullPointerException("list == null");
        }
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        MixedItemSection m24490b = dexFile.m24490b();
        int length = this.items.length;
        for (int i = 0; i < length; i++) {
            AnnotationItem[] annotationItemArr = this.items;
            annotationItemArr[i] = (AnnotationItem) m24490b.intern(annotationItemArr[i]);
        }
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        boolean mo26499j = interfaceC0428a.mo26499j();
        int length = this.items.length;
        if (mo26499j) {
            interfaceC0428a.mo26502d(0, offsetString() + " annotation set");
            interfaceC0428a.mo26502d(4, "  size: " + C0438g.m26475j(length));
        }
        interfaceC0428a.writeInt(length);
        for (int i = 0; i < length; i++) {
            int absoluteOffset = this.items[i].getAbsoluteOffset();
            if (mo26499j) {
                interfaceC0428a.mo26502d(4, "  entries[" + Integer.toHexString(i) + "]: " + C0438g.m26475j(absoluteOffset));
                this.items[i].annotateTo(interfaceC0428a, "    ");
            }
            interfaceC0428a.writeInt(absoluteOffset);
        }
    }
}
