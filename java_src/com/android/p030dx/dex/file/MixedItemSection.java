package com.android.p030dx.dex.file;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeMap;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p111l1.C4557d;
/* renamed from: com.android.dx.dex.file.MixedItemSection */
/* loaded from: classes.dex */
public final class MixedItemSection extends Section {
    private static final Comparator<OffsettedItem> TYPE_SORTER = new Comparator<OffsettedItem>() { // from class: com.android.dx.dex.file.MixedItemSection.1
        @Override // java.util.Comparator
        public int compare(OffsettedItem offsettedItem, OffsettedItem offsettedItem2) {
            return offsettedItem.itemType().compareTo(offsettedItem2.itemType());
        }
    };
    private final HashMap<OffsettedItem, OffsettedItem> interns;
    private final ArrayList<OffsettedItem> items;
    private final SortType sort;
    private int writeSize;

    /* renamed from: com.android.dx.dex.file.MixedItemSection$2 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11112 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3110a;

        static {
            int[] iArr = new int[SortType.values().length];
            f3110a = iArr;
            try {
                iArr[SortType.INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3110a[SortType.TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.android.dx.dex.file.MixedItemSection$SortType */
    /* loaded from: classes.dex */
    public enum SortType {
        NONE,
        TYPE,
        INSTANCE
    }

    public synchronized <T extends OffsettedItem> T intern(T t) {
        throwIfPrepared();
        T t2 = (T) this.interns.get(t);
        if (t2 != null) {
            return t2;
        }
        add(t);
        this.interns.put(t, t);
        return t;
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.items;
    }

    public int size() {
        return this.items.size();
    }

    @Override // com.android.p030dx.dex.file.Section
    public int getAbsoluteItemOffset(Item item) {
        return ((OffsettedItem) item).getAbsoluteOffset();
    }

    public MixedItemSection(String str, DexFile dexFile, int i, SortType sortType) {
        super(str, dexFile, i);
        this.items = new ArrayList<>(100);
        this.interns = new HashMap<>(100);
        this.sort = sortType;
        this.writeSize = -1;
    }

    public void add(OffsettedItem offsettedItem) {
        throwIfPrepared();
        try {
            if (offsettedItem.getAlignment() <= getAlignment()) {
                this.items.add(offsettedItem);
                return;
            }
            throw new IllegalArgumentException("incompatible item alignment");
        } catch (NullPointerException unused) {
            throw new NullPointerException("item == null");
        }
    }

    public <T extends OffsettedItem> T get(T t) {
        throwIfNotPrepared();
        T t2 = (T) this.interns.get(t);
        if (t2 != null) {
            return t2;
        }
        throw new NoSuchElementException(t.toString());
    }

    public void placeItems() {
        throwIfNotPrepared();
        int i = C11112.f3110a[this.sort.ordinal()];
        if (i != 1) {
            if (i == 2) {
                Collections.sort(this.items, TYPE_SORTER);
            }
        } else {
            Collections.sort(this.items);
        }
        int size = this.items.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            OffsettedItem offsettedItem = this.items.get(i3);
            try {
                int place = offsettedItem.place(this, i2);
                if (place >= i2) {
                    i2 = offsettedItem.writeSize() + place;
                } else {
                    throw new RuntimeException("bogus place() result for " + offsettedItem);
                }
            } catch (RuntimeException e) {
                throw C4557d.m16010d(e, "...while placing " + offsettedItem);
            }
        }
        this.writeSize = i2;
    }

    @Override // com.android.p030dx.dex.file.Section
    public void prepare0() {
        DexFile file = getFile();
        int i = 0;
        while (true) {
            int size = this.items.size();
            if (i >= size) {
                return;
            }
            while (i < size) {
                this.items.get(i).addContents(file);
                i++;
            }
        }
    }

    public void writeHeaderPart(InterfaceC0428a interfaceC0428a) {
        int fileOffset;
        throwIfNotPrepared();
        int i = this.writeSize;
        if (i != -1) {
            if (i == 0) {
                fileOffset = 0;
            } else {
                fileOffset = getFileOffset();
            }
            String name = getName();
            if (name == null) {
                name = "<unnamed>";
            }
            char[] cArr = new char[15 - name.length()];
            Arrays.fill(cArr, ' ');
            String str = new String(cArr);
            if (interfaceC0428a.mo26499j()) {
                interfaceC0428a.mo26502d(4, name + "_size:" + str + C0438g.m26475j(i));
                interfaceC0428a.mo26502d(4, name + "_off: " + str + C0438g.m26475j(fileOffset));
            }
            interfaceC0428a.writeInt(i);
            interfaceC0428a.writeInt(fileOffset);
            return;
        }
        throw new RuntimeException("write size not yet set");
    }

    public void writeIndexAnnotation(InterfaceC0428a interfaceC0428a, ItemType itemType, String str) {
        throwIfNotPrepared();
        TreeMap treeMap = new TreeMap();
        Iterator<OffsettedItem> it = this.items.iterator();
        while (it.hasNext()) {
            OffsettedItem next = it.next();
            if (next.itemType() == itemType) {
                treeMap.put(next.toHuman(), next);
            }
        }
        if (treeMap.size() == 0) {
            return;
        }
        interfaceC0428a.mo26502d(0, str);
        for (Map.Entry entry : treeMap.entrySet()) {
            interfaceC0428a.mo26502d(0, ((OffsettedItem) entry.getValue()).offsetString() + ' ' + ((String) entry.getKey()) + '\n');
        }
    }

    @Override // com.android.p030dx.dex.file.Section
    public int writeSize() {
        throwIfNotPrepared();
        return this.writeSize;
    }

    @Override // com.android.p030dx.dex.file.Section
    public void writeTo0(InterfaceC0428a interfaceC0428a) {
        boolean mo26499j = interfaceC0428a.mo26499j();
        DexFile file = getFile();
        Iterator<OffsettedItem> it = this.items.iterator();
        int i = 0;
        boolean z = true;
        while (it.hasNext()) {
            OffsettedItem next = it.next();
            if (mo26499j) {
                if (z) {
                    z = false;
                } else {
                    interfaceC0428a.mo26502d(0, "\n");
                }
            }
            int alignment = next.getAlignment() - 1;
            int i2 = (alignment ^ (-1)) & (i + alignment);
            if (i != i2) {
                interfaceC0428a.mo26445e(i2 - i);
                i = i2;
            }
            next.writeTo(file, interfaceC0428a);
            i += next.writeSize();
        }
        if (i == this.writeSize) {
            return;
        }
        throw new RuntimeException("output size mismatch");
    }
}
