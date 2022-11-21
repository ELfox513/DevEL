package com.android.p030dx.dex.file;

import java.util.Collection;
import java.util.TreeMap;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7204a;
import p218x1.C7205a0;
import p218x1.C7212d0;
/* renamed from: com.android.dx.dex.file.StringIdsSection */
/* loaded from: classes.dex */
public final class StringIdsSection extends UniformItemSection {
    private final TreeMap<C7212d0, StringIdItem> strings;

    public StringIdItem intern(String str) {
        return intern(new StringIdItem(new C7212d0(str)));
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.strings.values();
    }

    public StringIdsSection(DexFile dexFile) {
        super("string_ids", dexFile, 4);
        this.strings = new TreeMap<>();
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            throwIfNotPrepared();
            StringIdItem stringIdItem = this.strings.get((C7212d0) abstractC7204a);
            if (stringIdItem != null) {
                return stringIdItem;
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("cst == null");
    }

    public int indexOf(C7212d0 c7212d0) {
        if (c7212d0 != null) {
            throwIfNotPrepared();
            StringIdItem stringIdItem = this.strings.get(c7212d0);
            if (stringIdItem != null) {
                return stringIdItem.getIndex();
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("string == null");
    }

    public StringIdItem intern(C7212d0 c7212d0) {
        return intern(new StringIdItem(c7212d0));
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public void orderItems() {
        int i = 0;
        for (StringIdItem stringIdItem : this.strings.values()) {
            stringIdItem.setIndex(i);
            i++;
        }
    }

    public synchronized StringIdItem intern(StringIdItem stringIdItem) {
        if (stringIdItem != null) {
            throwIfPrepared();
            C7212d0 value = stringIdItem.getValue();
            StringIdItem stringIdItem2 = this.strings.get(value);
            if (stringIdItem2 != null) {
                return stringIdItem2;
            }
            this.strings.put(value, stringIdItem);
            return stringIdItem;
        }
        throw new NullPointerException("string == null");
    }

    public void writeHeaderPart(InterfaceC0428a interfaceC0428a) {
        int fileOffset;
        throwIfNotPrepared();
        int size = this.strings.size();
        if (size == 0) {
            fileOffset = 0;
        } else {
            fileOffset = getFileOffset();
        }
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(4, "string_ids_size: " + C0438g.m26475j(size));
            interfaceC0428a.mo26502d(4, "string_ids_off:  " + C0438g.m26475j(fileOffset));
        }
        interfaceC0428a.writeInt(size);
        interfaceC0428a.writeInt(fileOffset);
    }

    public synchronized void intern(C7205a0 c7205a0) {
        intern(c7205a0.m2128x());
        intern(c7205a0.m2130n());
    }
}
