package com.android.p030dx.dex.file;

import java.util.Collection;
import java.util.TreeMap;
import p218x1.AbstractC7204a;
import p218x1.C7237y;
/* renamed from: com.android.dx.dex.file.MethodHandlesSection */
/* loaded from: classes.dex */
public final class MethodHandlesSection extends UniformItemSection {
    private final TreeMap<C7237y, MethodHandleItem> methodHandles;

    /* renamed from: a */
    public int m24479a(C7237y c7237y) {
        return this.methodHandles.get(c7237y).getIndex();
    }

    public synchronized void intern(C7237y c7237y) {
        if (c7237y != null) {
            throwIfPrepared();
            if (this.methodHandles.get(c7237y) == null) {
                this.methodHandles.put(c7237y, new MethodHandleItem(c7237y));
            }
        } else {
            throw new NullPointerException("methodHandle == null");
        }
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.methodHandles.values();
    }

    public MethodHandlesSection(DexFile dexFile) {
        super("method_handles", dexFile, 8);
        this.methodHandles = new TreeMap<>();
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            throwIfNotPrepared();
            MethodHandleItem methodHandleItem = this.methodHandles.get((C7237y) abstractC7204a);
            if (methodHandleItem != null) {
                return methodHandleItem;
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("cst == null");
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public void orderItems() {
        int i = 0;
        for (MethodHandleItem methodHandleItem : this.methodHandles.values()) {
            methodHandleItem.setIndex(i);
            i++;
        }
    }
}
