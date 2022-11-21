package com.android.p030dx.dex.file;

import java.util.ArrayList;
import java.util.Collection;
import java.util.TreeMap;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7204a;
import p218x1.C7214e0;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: com.android.dx.dex.file.ClassDefsSection */
/* loaded from: classes.dex */
public final class ClassDefsSection extends UniformItemSection {
    private final TreeMap<C7402c, ClassDefItem> classDefs;
    private ArrayList<ClassDefItem> orderedDefs;

    public ClassDefsSection(DexFile dexFile) {
        super("class_defs", dexFile, 4);
        this.classDefs = new TreeMap<>();
        this.orderedDefs = null;
    }

    private int orderItems0(C7402c c7402c, int i, int i2) {
        ClassDefItem classDefItem = this.classDefs.get(c7402c);
        if (classDefItem != null && !classDefItem.hasIndex()) {
            if (i2 >= 0) {
                int i3 = i2 - 1;
                C7214e0 superclass = classDefItem.getSuperclass();
                if (superclass != null) {
                    i = orderItems0(superclass.m2097x(), i, i3);
                }
                InterfaceC7404e interfaces = classDefItem.getInterfaces();
                int size = interfaces.size();
                for (int i4 = 0; i4 < size; i4++) {
                    i = orderItems0(interfaces.getType(i4), i, i3);
                }
                classDefItem.setIndex(i);
                this.orderedDefs.add(classDefItem);
                return i + 1;
            }
            throw new RuntimeException("class circularity with " + c7402c);
        }
        return i;
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public IndexedItem get(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            throwIfNotPrepared();
            ClassDefItem classDefItem = this.classDefs.get(((C7214e0) abstractC7204a).m2097x());
            if (classDefItem != null) {
                return classDefItem;
            }
            throw new IllegalArgumentException("not found");
        }
        throw new NullPointerException("cst == null");
    }

    @Override // com.android.p030dx.dex.file.Section
    public Collection<? extends Item> items() {
        ArrayList<ClassDefItem> arrayList = this.orderedDefs;
        if (arrayList != null) {
            return arrayList;
        }
        return this.classDefs.values();
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public void orderItems() {
        int size = this.classDefs.size();
        this.orderedDefs = new ArrayList<>(size);
        int i = 0;
        for (C7402c c7402c : this.classDefs.keySet()) {
            i = orderItems0(c7402c, i, size - i);
        }
    }

    public void add(ClassDefItem classDefItem) {
        try {
            C7402c m2097x = classDefItem.getThisClass().m2097x();
            throwIfPrepared();
            if (this.classDefs.get(m2097x) == null) {
                this.classDefs.put(m2097x, classDefItem);
                return;
            }
            throw new IllegalArgumentException("already added: " + m2097x);
        } catch (NullPointerException unused) {
            throw new NullPointerException("clazz == null");
        }
    }

    public void writeHeaderPart(InterfaceC0428a interfaceC0428a) {
        int fileOffset;
        throwIfNotPrepared();
        int size = this.classDefs.size();
        if (size == 0) {
            fileOffset = 0;
        } else {
            fileOffset = getFileOffset();
        }
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(4, "class_defs_size: " + C0438g.m26475j(size));
            interfaceC0428a.mo26502d(4, "class_defs_off:  " + C0438g.m26475j(fileOffset));
        }
        interfaceC0428a.writeInt(size);
        interfaceC0428a.writeInt(fileOffset);
    }
}
