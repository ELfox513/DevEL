package com.android.p030dx.dex.file;

import p218x1.C7214e0;
/* renamed from: com.android.dx.dex.file.IdItem */
/* loaded from: classes.dex */
public abstract class IdItem extends IndexedItem {
    private final C7214e0 type;

    public final C7214e0 getDefiningClass() {
        return this.type;
    }

    public IdItem(C7214e0 c7214e0) {
        if (c7214e0 != null) {
            this.type = c7214e0;
            return;
        }
        throw new NullPointerException("type == null");
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        dexFile.getTypeIds().intern(this.type);
    }
}
