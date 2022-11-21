package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p015b2.InterfaceC0450r;
import p201v1.C6971c;
import p218x1.C7226n;
/* renamed from: com.android.dx.dex.file.FieldAnnotationStruct */
/* loaded from: classes.dex */
public final class FieldAnnotationStruct implements InterfaceC0450r, Comparable<FieldAnnotationStruct> {
    private AnnotationSetItem annotations;
    private final C7226n field;

    public C6971c getAnnotations() {
        return this.annotations.getAnnotations();
    }

    public C7226n getField() {
        return this.field;
    }

    public int hashCode() {
        return this.field.hashCode();
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return this.field.toHuman() + ": " + this.annotations;
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldAnnotationStruct fieldAnnotationStruct) {
        return this.field.compareTo(fieldAnnotationStruct.field);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FieldAnnotationStruct)) {
            return false;
        }
        return this.field.equals(((FieldAnnotationStruct) obj).field);
    }

    public FieldAnnotationStruct(C7226n c7226n, AnnotationSetItem annotationSetItem) {
        if (c7226n != null) {
            if (annotationSetItem != null) {
                this.field = c7226n;
                this.annotations = annotationSetItem;
                return;
            }
            throw new NullPointerException("annotations == null");
        }
        throw new NullPointerException("field == null");
    }

    public void addContents(DexFile dexFile) {
        FieldIdsSection fieldIds = dexFile.getFieldIds();
        MixedItemSection m24481k = dexFile.m24481k();
        fieldIds.intern(this.field);
        this.annotations = (AnnotationSetItem) m24481k.intern(this.annotations);
    }

    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int indexOf = dexFile.getFieldIds().indexOf(this.field);
        int absoluteOffset = this.annotations.getAbsoluteOffset();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, "    " + this.field.toHuman());
            interfaceC0428a.mo26502d(4, "      field_idx:       " + C0438g.m26475j(indexOf));
            interfaceC0428a.mo26502d(4, "      annotations_off: " + C0438g.m26475j(absoluteOffset));
        }
        interfaceC0428a.writeInt(indexOf);
        interfaceC0428a.writeInt(absoluteOffset);
    }
}
