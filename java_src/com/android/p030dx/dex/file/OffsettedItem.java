package com.android.p030dx.dex.file;

import net.bytebuddy.pool.TypePool;
import p015b2.InterfaceC0428a;
import p111l1.C4557d;
/* renamed from: com.android.dx.dex.file.OffsettedItem */
/* loaded from: classes.dex */
public abstract class OffsettedItem extends Item implements Comparable<OffsettedItem> {
    private Section addedTo;
    private final int alignment;
    private int offset;
    private int writeSize;

    public static int getAbsoluteOffsetOr0(OffsettedItem offsettedItem) {
        if (offsettedItem == null) {
            return 0;
        }
        return offsettedItem.getAbsoluteOffset();
    }

    public int compareTo0(OffsettedItem offsettedItem) {
        throw new UnsupportedOperationException("unsupported");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        OffsettedItem offsettedItem = (OffsettedItem) obj;
        return itemType() == offsettedItem.itemType() && compareTo0(offsettedItem) == 0;
    }

    public final int getAlignment() {
        return this.alignment;
    }

    public final String offsetString() {
        return TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH + Integer.toHexString(getAbsoluteOffset()) + ']';
    }

    public void place0(Section section, int i) {
    }

    public abstract String toHuman();

    public abstract void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a);

    @Override // java.lang.Comparable
    public final int compareTo(OffsettedItem offsettedItem) {
        if (this == offsettedItem) {
            return 0;
        }
        ItemType itemType = itemType();
        ItemType itemType2 = offsettedItem.itemType();
        if (itemType != itemType2) {
            return itemType.compareTo(itemType2);
        }
        return compareTo0(offsettedItem);
    }

    public final int getAbsoluteOffset() {
        int i = this.offset;
        if (i >= 0) {
            return this.addedTo.getAbsoluteOffset(i);
        }
        throw new RuntimeException("offset not yet known");
    }

    public final int getRelativeOffset() {
        int i = this.offset;
        if (i >= 0) {
            return i;
        }
        throw new RuntimeException("offset not yet known");
    }

    public final int place(Section section, int i) {
        if (section != null) {
            if (i >= 0) {
                if (this.addedTo == null) {
                    int i2 = this.alignment - 1;
                    int i3 = (i + i2) & (i2 ^ (-1));
                    this.addedTo = section;
                    this.offset = i3;
                    place0(section, i3);
                    return i3;
                }
                throw new RuntimeException("already written");
            }
            throw new IllegalArgumentException("offset < 0");
        }
        throw new NullPointerException("addedTo == null");
    }

    public final void setWriteSize(int i) {
        if (i >= 0) {
            if (this.writeSize < 0) {
                this.writeSize = i;
                return;
            }
            throw new UnsupportedOperationException("writeSize already set");
        }
        throw new IllegalArgumentException("writeSize < 0");
    }

    @Override // com.android.p030dx.dex.file.Item
    public final int writeSize() {
        int i = this.writeSize;
        if (i >= 0) {
            return i;
        }
        throw new UnsupportedOperationException("writeSize is unknown");
    }

    @Override // com.android.p030dx.dex.file.Item
    public final void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        interfaceC0428a.mo26441l(this.alignment);
        try {
            if (this.writeSize >= 0) {
                interfaceC0428a.mo26444f(getAbsoluteOffset());
                writeTo0(dexFile, interfaceC0428a);
                return;
            }
            throw new UnsupportedOperationException("writeSize is unknown");
        } catch (RuntimeException e) {
            throw C4557d.m16010d(e, "...while writing " + this);
        }
    }

    public OffsettedItem(int i, int i2) {
        Section.validateAlignment(i);
        if (i2 >= -1) {
            this.alignment = i;
            this.writeSize = i2;
            this.addedTo = null;
            this.offset = -1;
            return;
        }
        throw new IllegalArgumentException("writeSize < -1");
    }
}
