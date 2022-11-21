package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p015b2.InterfaceC0450r;
import p201v1.C6971c;
import p218x1.C7238z;
/* renamed from: com.android.dx.dex.file.MethodAnnotationStruct */
/* loaded from: classes.dex */
public final class MethodAnnotationStruct implements InterfaceC0450r, Comparable<MethodAnnotationStruct> {
    private AnnotationSetItem annotations;
    private final C7238z method;

    public C6971c getAnnotations() {
        return this.annotations.getAnnotations();
    }

    public C7238z getMethod() {
        return this.method;
    }

    public int hashCode() {
        return this.method.hashCode();
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return this.method.toHuman() + ": " + this.annotations;
    }

    @Override // java.lang.Comparable
    public int compareTo(MethodAnnotationStruct methodAnnotationStruct) {
        return this.method.compareTo(methodAnnotationStruct.method);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MethodAnnotationStruct)) {
            return false;
        }
        return this.method.equals(((MethodAnnotationStruct) obj).method);
    }

    public MethodAnnotationStruct(C7238z c7238z, AnnotationSetItem annotationSetItem) {
        if (c7238z != null) {
            if (annotationSetItem != null) {
                this.method = c7238z;
                this.annotations = annotationSetItem;
                return;
            }
            throw new NullPointerException("annotations == null");
        }
        throw new NullPointerException("method == null");
    }

    public void addContents(DexFile dexFile) {
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MixedItemSection m24481k = dexFile.m24481k();
        methodIds.intern(this.method);
        this.annotations = (AnnotationSetItem) m24481k.intern(this.annotations);
    }

    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int indexOf = dexFile.getMethodIds().indexOf(this.method);
        int absoluteOffset = this.annotations.getAbsoluteOffset();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, "    " + this.method.toHuman());
            interfaceC0428a.mo26502d(4, "      method_idx:      " + C0438g.m26475j(indexOf));
            interfaceC0428a.mo26502d(4, "      annotations_off: " + C0438g.m26475j(absoluteOffset));
        }
        interfaceC0428a.writeInt(indexOf);
        interfaceC0428a.writeInt(absoluteOffset);
    }
}
