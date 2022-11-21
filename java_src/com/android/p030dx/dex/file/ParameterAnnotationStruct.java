package com.android.p030dx.dex.file;

import java.util.ArrayList;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p015b2.InterfaceC0450r;
import p201v1.C6972d;
import p218x1.C7238z;
/* renamed from: com.android.dx.dex.file.ParameterAnnotationStruct */
/* loaded from: classes.dex */
public final class ParameterAnnotationStruct implements InterfaceC0450r, Comparable<ParameterAnnotationStruct> {
    private final UniformListItem<AnnotationSetRefItem> annotationsItem;
    private final C6972d annotationsList;
    private final C7238z method;

    public C6972d getAnnotationsList() {
        return this.annotationsList;
    }

    public C7238z getMethod() {
        return this.method;
    }

    public int hashCode() {
        return this.method.hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(ParameterAnnotationStruct parameterAnnotationStruct) {
        return this.method.compareTo(parameterAnnotationStruct.method);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ParameterAnnotationStruct)) {
            return false;
        }
        return this.method.equals(((ParameterAnnotationStruct) obj).method);
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.method.toHuman());
        sb.append(": ");
        boolean z = true;
        for (AnnotationSetRefItem annotationSetRefItem : this.annotationsItem.getItems()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(annotationSetRefItem.toHuman());
        }
        return sb.toString();
    }

    public ParameterAnnotationStruct(C7238z c7238z, C6972d c6972d, DexFile dexFile) {
        if (c7238z != null) {
            if (c6972d != null) {
                this.method = c7238z;
                this.annotationsList = c6972d;
                int size = c6972d.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    arrayList.add(new AnnotationSetRefItem(new AnnotationSetItem(c6972d.m2821z(i), dexFile)));
                }
                this.annotationsItem = new UniformListItem<>(ItemType.TYPE_ANNOTATION_SET_REF_LIST, arrayList);
                return;
            }
            throw new NullPointerException("annotationsList == null");
        }
        throw new NullPointerException("method == null");
    }

    public void addContents(DexFile dexFile) {
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MixedItemSection m24481k = dexFile.m24481k();
        methodIds.intern(this.method);
        m24481k.add(this.annotationsItem);
    }

    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int indexOf = dexFile.getMethodIds().indexOf(this.method);
        int absoluteOffset = this.annotationsItem.getAbsoluteOffset();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, "    " + this.method.toHuman());
            interfaceC0428a.mo26502d(4, "      method_idx:      " + C0438g.m26475j(indexOf));
            interfaceC0428a.mo26502d(4, "      annotations_off: " + C0438g.m26475j(absoluteOffset));
        }
        interfaceC0428a.writeInt(indexOf);
        interfaceC0428a.writeInt(absoluteOffset);
    }
}
