package com.android.p030dx.dex.file;

import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p102k1.C4422i;
import p218x1.AbstractC7204a;
import p218x1.C7214e0;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.file.TypeIdsSection */
/* loaded from: classes.dex */
public final class TypeIdsSection extends UniformItemSection {
    private final TreeMap<C7402c, TypeIdItem> typeIds;

    public int indexOf(C7402c c7402c) {
        if (c7402c != null) {
            throwIfNotPrepared();
            TypeIdItem typeIdItem = this.typeIds.get(c7402c);
            if (typeIdItem != null) {
                return typeIdItem.getIndex();
            }
            throw new IllegalArgumentException("not found: " + c7402c);
        }
        throw new NullPointerException("type == null");
    }

    public synchronized TypeIdItem intern(C7402c c7402c) {
        TypeIdItem typeIdItem;
        if (c7402c != null) {
            throwIfPrepared();
            typeIdItem = this.typeIds.get(c7402c);
            if (typeIdItem == null) {
                typeIdItem = new TypeIdItem(new C7214e0(c7402c));
                this.typeIds.put(c7402c, typeIdItem);
            }
        } else {
            throw new NullPointerException("type == null");
        }
        return typeIdItem;
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.typeIds.values();
    }

    public TypeIdsSection(DexFile dexFile) {
        super("type_ids", dexFile, 4);
        this.typeIds = new TreeMap<>();
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            throwIfNotPrepared();
            TypeIdItem typeIdItem = this.typeIds.get(((C7214e0) abstractC7204a).m2097x());
            if (typeIdItem != null) {
                return typeIdItem;
            }
            throw new IllegalArgumentException("not found: " + abstractC7204a);
        }
        throw new NullPointerException("cst == null");
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public void orderItems() {
        Iterator<? extends Item> it = items().iterator();
        int i = 0;
        while (it.hasNext()) {
            ((TypeIdItem) it.next()).setIndex(i);
            i++;
        }
    }

    public void writeHeaderPart(InterfaceC0428a interfaceC0428a) {
        int fileOffset;
        throwIfNotPrepared();
        int size = this.typeIds.size();
        if (size == 0) {
            fileOffset = 0;
        } else {
            fileOffset = getFileOffset();
        }
        if (size <= 65536) {
            if (interfaceC0428a.mo26499j()) {
                interfaceC0428a.mo26502d(4, "type_ids_size:   " + C0438g.m26475j(size));
                interfaceC0428a.mo26502d(4, "type_ids_off:    " + C0438g.m26475j(fileOffset));
            }
            interfaceC0428a.writeInt(size);
            interfaceC0428a.writeInt(fileOffset);
            return;
        }
        throw new C4422i(String.format("Too many type identifiers to fit in one dex file: %1$d; max is %2$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.", Integer.valueOf(items().size()), 65536));
    }

    public int indexOf(C7214e0 c7214e0) {
        if (c7214e0 != null) {
            return indexOf(c7214e0.m2097x());
        }
        throw new NullPointerException("type == null");
    }

    public synchronized TypeIdItem intern(C7214e0 c7214e0) {
        TypeIdItem typeIdItem;
        if (c7214e0 != null) {
            throwIfPrepared();
            C7402c m2097x = c7214e0.m2097x();
            typeIdItem = this.typeIds.get(m2097x);
            if (typeIdItem == null) {
                typeIdItem = new TypeIdItem(c7214e0);
                this.typeIds.put(m2097x, typeIdItem);
            }
        } else {
            throw new NullPointerException("type == null");
        }
        return typeIdItem;
    }
}
