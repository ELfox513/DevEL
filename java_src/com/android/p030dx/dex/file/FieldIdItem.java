package com.android.p030dx.dex.file;

import p218x1.C7226n;
/* renamed from: com.android.dx.dex.file.FieldIdItem */
/* loaded from: classes.dex */
public final class FieldIdItem extends MemberIdItem {
    public FieldIdItem(C7226n c7226n) {
        super(c7226n);
    }

    public C7226n getFieldRef() {
        return (C7226n) getRef();
    }

    @Override // com.android.p030dx.dex.file.MemberIdItem
    public String getTypoidName() {
        return "type_idx";
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_FIELD_ID_ITEM;
    }

    @Override // com.android.p030dx.dex.file.MemberIdItem, com.android.p030dx.dex.file.IdItem, com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        super.addContents(dexFile);
        dexFile.getTypeIds().intern(getFieldRef().getType());
    }

    @Override // com.android.p030dx.dex.file.MemberIdItem
    public int getTypoidIdx(DexFile dexFile) {
        return dexFile.getTypeIds().indexOf(getFieldRef().getType());
    }
}
