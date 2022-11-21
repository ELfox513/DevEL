package com.android.p030dx.dex.file;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import p218x1.AbstractC7204a;
/* renamed from: com.android.dx.dex.file.HeaderSection */
/* loaded from: classes.dex */
public final class HeaderSection extends UniformItemSection {
    private final List<HeaderItem> list;

    public HeaderSection(DexFile dexFile) {
        super(null, dexFile, 4);
        HeaderItem headerItem = new HeaderItem();
        headerItem.setIndex(0);
        this.list = Collections.singletonList(headerItem);
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        return null;
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.list;
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public void orderItems() {
    }
}
