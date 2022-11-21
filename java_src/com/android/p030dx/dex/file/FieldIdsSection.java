package com.android.p030dx.dex.file;

import java.util.Collection;
import java.util.TreeMap;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7204a;
import p218x1.C7226n;
/* renamed from: com.android.dx.dex.file.FieldIdsSection */
/* loaded from: classes.dex */
public final class FieldIdsSection extends MemberIdsSection {
    private final TreeMap<C7226n, FieldIdItem> fieldIds;

    public synchronized FieldIdItem intern(C7226n c7226n) {
        FieldIdItem fieldIdItem;
        if (c7226n != null) {
            throwIfPrepared();
            fieldIdItem = this.fieldIds.get(c7226n);
            if (fieldIdItem == null) {
                fieldIdItem = new FieldIdItem(c7226n);
                this.fieldIds.put(c7226n, fieldIdItem);
            }
        } else {
            throw new NullPointerException("field == null");
        }
        return fieldIdItem;
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.fieldIds.values();
    }

    public FieldIdsSection(DexFile dexFile) {
        super("field_ids", dexFile);
        this.fieldIds = new TreeMap<>();
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            throwIfNotPrepared();
            FieldIdItem fieldIdItem = this.fieldIds.get((C7226n) abstractC7204a);
            if (fieldIdItem != null) {
                return fieldIdItem;
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("cst == null");
    }

    public int indexOf(C7226n c7226n) {
        if (c7226n != null) {
            throwIfNotPrepared();
            FieldIdItem fieldIdItem = this.fieldIds.get(c7226n);
            if (fieldIdItem != null) {
                return fieldIdItem.getIndex();
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("ref == null");
    }

    public void writeHeaderPart(InterfaceC0428a interfaceC0428a) {
        int fileOffset;
        throwIfNotPrepared();
        int size = this.fieldIds.size();
        if (size == 0) {
            fileOffset = 0;
        } else {
            fileOffset = getFileOffset();
        }
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(4, "field_ids_size:  " + C0438g.m26475j(size));
            interfaceC0428a.mo26502d(4, "field_ids_off:   " + C0438g.m26475j(fileOffset));
        }
        interfaceC0428a.writeInt(size);
        interfaceC0428a.writeInt(fileOffset);
    }
}
