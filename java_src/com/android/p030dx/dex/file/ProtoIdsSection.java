package com.android.p030dx.dex.file;

import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7204a;
import p218x1.C7207b0;
import p226y1.C7400a;
/* renamed from: com.android.dx.dex.file.ProtoIdsSection */
/* loaded from: classes.dex */
public final class ProtoIdsSection extends UniformItemSection {
    private final TreeMap<C7400a, ProtoIdItem> protoIds;

    public synchronized ProtoIdItem intern(C7400a c7400a) {
        ProtoIdItem protoIdItem;
        if (c7400a != null) {
            throwIfPrepared();
            protoIdItem = this.protoIds.get(c7400a);
            if (protoIdItem == null) {
                protoIdItem = new ProtoIdItem(c7400a);
                this.protoIds.put(c7400a, protoIdItem);
            }
        } else {
            throw new NullPointerException("prototype == null");
        }
        return protoIdItem;
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.protoIds.values();
    }

    public ProtoIdsSection(DexFile dexFile) {
        super("proto_ids", dexFile, 4);
        this.protoIds = new TreeMap<>();
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            if (abstractC7204a instanceof C7207b0) {
                throwIfNotPrepared();
                ProtoIdItem protoIdItem = this.protoIds.get(((C7207b0) abstractC7204a).m2126n());
                if (protoIdItem != null) {
                    return protoIdItem;
                }
                throw new IllegalArgumentException("not found");
            }
            throw new IllegalArgumentException("cst not instance of CstProtoRef");
        }
        throw new NullPointerException("cst == null");
    }

    public int indexOf(C7400a c7400a) {
        if (c7400a != null) {
            throwIfNotPrepared();
            ProtoIdItem protoIdItem = this.protoIds.get(c7400a);
            if (protoIdItem != null) {
                return protoIdItem.getIndex();
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("prototype == null");
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public void orderItems() {
        Iterator<? extends Item> it = items().iterator();
        int i = 0;
        while (it.hasNext()) {
            ((ProtoIdItem) it.next()).setIndex(i);
            i++;
        }
    }

    public void writeHeaderPart(InterfaceC0428a interfaceC0428a) {
        int fileOffset;
        throwIfNotPrepared();
        int size = this.protoIds.size();
        if (size == 0) {
            fileOffset = 0;
        } else {
            fileOffset = getFileOffset();
        }
        if (size <= 65536) {
            if (interfaceC0428a.mo26499j()) {
                interfaceC0428a.mo26502d(4, "proto_ids_size:  " + C0438g.m26475j(size));
                interfaceC0428a.mo26502d(4, "proto_ids_off:   " + C0438g.m26475j(fileOffset));
            }
            interfaceC0428a.writeInt(size);
            interfaceC0428a.writeInt(fileOffset);
            return;
        }
        throw new UnsupportedOperationException("too many proto ids");
    }
}
