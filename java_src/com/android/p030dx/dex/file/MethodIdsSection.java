package com.android.p030dx.dex.file;

import java.util.Collection;
import java.util.TreeMap;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7213e;
/* renamed from: com.android.dx.dex.file.MethodIdsSection */
/* loaded from: classes.dex */
public final class MethodIdsSection extends MemberIdsSection {
    private final TreeMap<AbstractC7213e, MethodIdItem> methodIds;

    public synchronized MethodIdItem intern(AbstractC7213e abstractC7213e) {
        MethodIdItem methodIdItem;
        if (abstractC7213e != null) {
            throwIfPrepared();
            methodIdItem = this.methodIds.get(abstractC7213e);
            if (methodIdItem == null) {
                methodIdItem = new MethodIdItem(abstractC7213e);
                this.methodIds.put(abstractC7213e, methodIdItem);
            }
        } else {
            throw new NullPointerException("method == null");
        }
        return methodIdItem;
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.methodIds.values();
    }

    public MethodIdsSection(DexFile dexFile) {
        super("method_ids", dexFile);
        this.methodIds = new TreeMap<>();
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            throwIfNotPrepared();
            MethodIdItem methodIdItem = this.methodIds.get((AbstractC7213e) abstractC7204a);
            if (methodIdItem != null) {
                return methodIdItem;
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("cst == null");
    }

    public int indexOf(AbstractC7213e abstractC7213e) {
        if (abstractC7213e != null) {
            throwIfNotPrepared();
            MethodIdItem methodIdItem = this.methodIds.get(abstractC7213e);
            if (methodIdItem != null) {
                return methodIdItem.getIndex();
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("ref == null");
    }

    public void writeHeaderPart(InterfaceC0428a interfaceC0428a) {
        int fileOffset;
        throwIfNotPrepared();
        int size = this.methodIds.size();
        if (size == 0) {
            fileOffset = 0;
        } else {
            fileOffset = getFileOffset();
        }
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(4, "method_ids_size: " + C0438g.m26475j(size));
            interfaceC0428a.mo26502d(4, "method_ids_off:  " + C0438g.m26475j(fileOffset));
        }
        interfaceC0428a.writeInt(size);
        interfaceC0428a.writeInt(fileOffset);
    }
}
