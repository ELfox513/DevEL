package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.file.AnnotationSetRefItem */
/* loaded from: classes.dex */
public final class AnnotationSetRefItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int WRITE_SIZE = 4;
    private AnnotationSetItem annotations;

    public AnnotationSetRefItem(AnnotationSetItem annotationSetItem) {
        super(4, 4);
        if (annotationSetItem != null) {
            this.annotations = annotationSetItem;
            return;
        }
        throw new NullPointerException("annotations == null");
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ANNOTATION_SET_REF_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.annotations.toHuman();
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int absoluteOffset = this.annotations.getAbsoluteOffset();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(4, "  annotations_off: " + C0438g.m26475j(absoluteOffset));
        }
        interfaceC0428a.writeInt(absoluteOffset);
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        this.annotations = (AnnotationSetItem) dexFile.m24481k().intern(this.annotations);
    }
}
