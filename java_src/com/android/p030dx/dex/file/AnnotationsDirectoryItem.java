package com.android.p030dx.dex.file;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p201v1.C6971c;
import p201v1.C6972d;
import p218x1.C7226n;
import p218x1.C7238z;
/* renamed from: com.android.dx.dex.file.AnnotationsDirectoryItem */
/* loaded from: classes.dex */
public final class AnnotationsDirectoryItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int ELEMENT_SIZE = 8;
    private static final int HEADER_SIZE = 16;
    private AnnotationSetItem classAnnotations;
    private ArrayList<FieldAnnotationStruct> fieldAnnotations;
    private ArrayList<MethodAnnotationStruct> methodAnnotations;
    private ArrayList<ParameterAnnotationStruct> parameterAnnotations;

    public AnnotationsDirectoryItem() {
        super(4, -1);
        this.classAnnotations = null;
        this.fieldAnnotations = null;
        this.methodAnnotations = null;
        this.parameterAnnotations = null;
    }

    private static int listSize(ArrayList<?> arrayList) {
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public boolean isEmpty() {
        return this.classAnnotations == null && this.fieldAnnotations == null && this.methodAnnotations == null && this.parameterAnnotations == null;
    }

    public boolean isInternable() {
        return this.classAnnotations != null && this.fieldAnnotations == null && this.methodAnnotations == null && this.parameterAnnotations == null;
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ANNOTATIONS_DIRECTORY_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        throw new RuntimeException("unsupported");
    }

    public void addFieldAnnotations(C7226n c7226n, C6971c c6971c, DexFile dexFile) {
        if (this.fieldAnnotations == null) {
            this.fieldAnnotations = new ArrayList<>();
        }
        this.fieldAnnotations.add(new FieldAnnotationStruct(c7226n, new AnnotationSetItem(c6971c, dexFile)));
    }

    public void addMethodAnnotations(C7238z c7238z, C6971c c6971c, DexFile dexFile) {
        if (this.methodAnnotations == null) {
            this.methodAnnotations = new ArrayList<>();
        }
        this.methodAnnotations.add(new MethodAnnotationStruct(c7238z, new AnnotationSetItem(c6971c, dexFile)));
    }

    public void addParameterAnnotations(C7238z c7238z, C6972d c6972d, DexFile dexFile) {
        if (this.parameterAnnotations == null) {
            this.parameterAnnotations = new ArrayList<>();
        }
        this.parameterAnnotations.add(new ParameterAnnotationStruct(c7238z, c6972d, dexFile));
    }

    /* renamed from: c */
    public void m24494c(PrintWriter printWriter) {
        if (this.classAnnotations != null) {
            printWriter.println("  class annotations: " + this.classAnnotations);
        }
        if (this.fieldAnnotations != null) {
            printWriter.println("  field annotations:");
            Iterator<FieldAnnotationStruct> it = this.fieldAnnotations.iterator();
            while (it.hasNext()) {
                printWriter.println("    " + it.next().toHuman());
            }
        }
        if (this.methodAnnotations != null) {
            printWriter.println("  method annotations:");
            Iterator<MethodAnnotationStruct> it2 = this.methodAnnotations.iterator();
            while (it2.hasNext()) {
                printWriter.println("    " + it2.next().toHuman());
            }
        }
        if (this.parameterAnnotations != null) {
            printWriter.println("  parameter annotations:");
            Iterator<ParameterAnnotationStruct> it3 = this.parameterAnnotations.iterator();
            while (it3.hasNext()) {
                printWriter.println("    " + it3.next().toHuman());
            }
        }
    }

    public C6971c getMethodAnnotations(C7238z c7238z) {
        ArrayList<MethodAnnotationStruct> arrayList = this.methodAnnotations;
        if (arrayList == null) {
            return null;
        }
        Iterator<MethodAnnotationStruct> it = arrayList.iterator();
        while (it.hasNext()) {
            MethodAnnotationStruct next = it.next();
            if (next.getMethod().equals(c7238z)) {
                return next.getAnnotations();
            }
        }
        return null;
    }

    public C6972d getParameterAnnotations(C7238z c7238z) {
        ArrayList<ParameterAnnotationStruct> arrayList = this.parameterAnnotations;
        if (arrayList == null) {
            return null;
        }
        Iterator<ParameterAnnotationStruct> it = arrayList.iterator();
        while (it.hasNext()) {
            ParameterAnnotationStruct next = it.next();
            if (next.getMethod().equals(c7238z)) {
                return next.getAnnotationsList();
            }
        }
        return null;
    }

    public int hashCode() {
        AnnotationSetItem annotationSetItem = this.classAnnotations;
        if (annotationSetItem == null) {
            return 0;
        }
        return annotationSetItem.hashCode();
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        setWriteSize(((listSize(this.fieldAnnotations) + listSize(this.methodAnnotations) + listSize(this.parameterAnnotations)) * 8) + 16);
    }

    public void setClassAnnotations(C6971c c6971c, DexFile dexFile) {
        if (c6971c != null) {
            if (this.classAnnotations == null) {
                this.classAnnotations = new AnnotationSetItem(c6971c, dexFile);
                return;
            }
            throw new UnsupportedOperationException("class annotations already set");
        }
        throw new NullPointerException("annotations == null");
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        MixedItemSection m24481k = dexFile.m24481k();
        AnnotationSetItem annotationSetItem = this.classAnnotations;
        if (annotationSetItem != null) {
            this.classAnnotations = (AnnotationSetItem) m24481k.intern(annotationSetItem);
        }
        ArrayList<FieldAnnotationStruct> arrayList = this.fieldAnnotations;
        if (arrayList != null) {
            Iterator<FieldAnnotationStruct> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().addContents(dexFile);
            }
        }
        ArrayList<MethodAnnotationStruct> arrayList2 = this.methodAnnotations;
        if (arrayList2 != null) {
            Iterator<MethodAnnotationStruct> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                it2.next().addContents(dexFile);
            }
        }
        ArrayList<ParameterAnnotationStruct> arrayList3 = this.parameterAnnotations;
        if (arrayList3 != null) {
            Iterator<ParameterAnnotationStruct> it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                it3.next().addContents(dexFile);
            }
        }
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public int compareTo0(OffsettedItem offsettedItem) {
        if (isInternable()) {
            return this.classAnnotations.compareTo((OffsettedItem) ((AnnotationsDirectoryItem) offsettedItem).classAnnotations);
        }
        throw new UnsupportedOperationException("uninternable instance");
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        boolean mo26499j = interfaceC0428a.mo26499j();
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.classAnnotations);
        int listSize = listSize(this.fieldAnnotations);
        int listSize2 = listSize(this.methodAnnotations);
        int listSize3 = listSize(this.parameterAnnotations);
        if (mo26499j) {
            interfaceC0428a.mo26502d(0, offsetString() + " annotations directory");
            interfaceC0428a.mo26502d(4, "  class_annotations_off: " + C0438g.m26475j(absoluteOffsetOr0));
            interfaceC0428a.mo26502d(4, "  fields_size:           " + C0438g.m26475j(listSize));
            interfaceC0428a.mo26502d(4, "  methods_size:          " + C0438g.m26475j(listSize2));
            interfaceC0428a.mo26502d(4, "  parameters_size:       " + C0438g.m26475j(listSize3));
        }
        interfaceC0428a.writeInt(absoluteOffsetOr0);
        interfaceC0428a.writeInt(listSize);
        interfaceC0428a.writeInt(listSize2);
        interfaceC0428a.writeInt(listSize3);
        if (listSize != 0) {
            Collections.sort(this.fieldAnnotations);
            if (mo26499j) {
                interfaceC0428a.mo26502d(0, "  fields:");
            }
            Iterator<FieldAnnotationStruct> it = this.fieldAnnotations.iterator();
            while (it.hasNext()) {
                it.next().writeTo(dexFile, interfaceC0428a);
            }
        }
        if (listSize2 != 0) {
            Collections.sort(this.methodAnnotations);
            if (mo26499j) {
                interfaceC0428a.mo26502d(0, "  methods:");
            }
            Iterator<MethodAnnotationStruct> it2 = this.methodAnnotations.iterator();
            while (it2.hasNext()) {
                it2.next().writeTo(dexFile, interfaceC0428a);
            }
        }
        if (listSize3 != 0) {
            Collections.sort(this.parameterAnnotations);
            if (mo26499j) {
                interfaceC0428a.mo26502d(0, "  parameters:");
            }
            Iterator<ParameterAnnotationStruct> it3 = this.parameterAnnotations.iterator();
            while (it3.hasNext()) {
                it3.next().writeTo(dexFile, interfaceC0428a);
            }
        }
    }
}
