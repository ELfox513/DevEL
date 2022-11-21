package com.android.p030dx.dex.file;

import p218x1.AbstractC7213e;
/* renamed from: com.android.dx.dex.file.MethodIdItem */
/* loaded from: classes.dex */
public final class MethodIdItem extends MemberIdItem {
    public MethodIdItem(AbstractC7213e abstractC7213e) {
        super(abstractC7213e);
    }

    public AbstractC7213e getMethodRef() {
        return (AbstractC7213e) getRef();
    }

    @Override // com.android.p030dx.dex.file.MemberIdItem
    public String getTypoidName() {
        return "proto_idx";
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_METHOD_ID_ITEM;
    }

    @Override // com.android.p030dx.dex.file.MemberIdItem, com.android.p030dx.dex.file.IdItem, com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        super.addContents(dexFile);
        dexFile.m24485g().intern(getMethodRef().m2104z());
    }

    @Override // com.android.p030dx.dex.file.MemberIdItem
    public int getTypoidIdx(DexFile dexFile) {
        return dexFile.m24485g().indexOf(getMethodRef().m2104z());
    }
}
