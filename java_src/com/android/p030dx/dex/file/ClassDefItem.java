package com.android.p030dx.dex.file;

import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import p015b2.C0438g;
import p015b2.C0453u;
import p015b2.InterfaceC0428a;
import p201v1.C6971c;
import p201v1.C6972d;
import p210w1.C7136a;
import p218x1.AbstractC7204a;
import p218x1.C7210d;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7226n;
import p218x1.C7238z;
import p226y1.C7401b;
import p226y1.InterfaceC7404e;
/* renamed from: com.android.dx.dex.file.ClassDefItem */
/* loaded from: classes.dex */
public final class ClassDefItem extends IndexedItem {
    private final int accessFlags;
    private AnnotationsDirectoryItem annotationsDirectory;
    private final ClassDataItem classData;
    private TypeListItem interfaces;
    private final C7212d0 sourceFile;
    private EncodedArrayItem staticValuesItem;
    private final C7214e0 superclass;
    private final C7214e0 thisClass;

    public void addDirectMethod(EncodedMethod encodedMethod) {
        this.classData.addDirectMethod(encodedMethod);
    }

    public void addFieldAnnotations(C7226n c7226n, C6971c c6971c, DexFile dexFile) {
        this.annotationsDirectory.addFieldAnnotations(c7226n, c6971c, dexFile);
    }

    public void addInstanceField(EncodedField encodedField) {
        this.classData.addInstanceField(encodedField);
    }

    public void addMethodAnnotations(C7238z c7238z, C6971c c6971c, DexFile dexFile) {
        this.annotationsDirectory.addMethodAnnotations(c7238z, c6971c, dexFile);
    }

    public void addParameterAnnotations(C7238z c7238z, C6972d c6972d, DexFile dexFile) {
        this.annotationsDirectory.addParameterAnnotations(c7238z, c6972d, dexFile);
    }

    public void addStaticField(EncodedField encodedField, AbstractC7204a abstractC7204a) {
        this.classData.addStaticField(encodedField, abstractC7204a);
    }

    public void addVirtualMethod(EncodedMethod encodedMethod) {
        this.classData.addVirtualMethod(encodedMethod);
    }

    public int getAccessFlags() {
        return this.accessFlags;
    }

    public C6971c getMethodAnnotations(C7238z c7238z) {
        return this.annotationsDirectory.getMethodAnnotations(c7238z);
    }

    public ArrayList<EncodedMethod> getMethods() {
        return this.classData.getMethods();
    }

    public C6972d getParameterAnnotations(C7238z c7238z) {
        return this.annotationsDirectory.getParameterAnnotations(c7238z);
    }

    public C7212d0 getSourceFile() {
        return this.sourceFile;
    }

    public C7214e0 getSuperclass() {
        return this.superclass;
    }

    public C7214e0 getThisClass() {
        return this.thisClass;
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_CLASS_DEF_ITEM;
    }

    public void setClassAnnotations(C6971c c6971c, DexFile dexFile) {
        this.annotationsDirectory.setClassAnnotations(c6971c, dexFile);
    }

    @Override // com.android.p030dx.dex.file.Item
    public int writeSize() {
        return 32;
    }

    public InterfaceC7404e getInterfaces() {
        TypeListItem typeListItem = this.interfaces;
        if (typeListItem == null) {
            return C7401b.f37044a;
        }
        return typeListItem.getList();
    }

    @Override // com.android.p030dx.dex.file.Item
    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int indexOf;
        int absoluteOffset;
        int absoluteOffset2;
        String human;
        boolean mo26499j = interfaceC0428a.mo26499j();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int indexOf2 = typeIds.indexOf(this.thisClass);
        C7214e0 c7214e0 = this.superclass;
        int i = -1;
        if (c7214e0 == null) {
            indexOf = -1;
        } else {
            indexOf = typeIds.indexOf(c7214e0);
        }
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.interfaces);
        if (this.annotationsDirectory.isEmpty()) {
            absoluteOffset = 0;
        } else {
            absoluteOffset = this.annotationsDirectory.getAbsoluteOffset();
        }
        if (this.sourceFile != null) {
            i = dexFile.m24483i().indexOf(this.sourceFile);
        }
        if (this.classData.isEmpty()) {
            absoluteOffset2 = 0;
        } else {
            absoluteOffset2 = this.classData.getAbsoluteOffset();
        }
        int absoluteOffsetOr02 = OffsettedItem.getAbsoluteOffsetOr0(this.staticValuesItem);
        if (mo26499j) {
            interfaceC0428a.mo26502d(0, indexString() + ' ' + this.thisClass.toHuman());
            StringBuilder sb = new StringBuilder();
            sb.append("  class_idx:           ");
            sb.append(C0438g.m26475j(indexOf2));
            interfaceC0428a.mo26502d(4, sb.toString());
            interfaceC0428a.mo26502d(4, "  access_flags:        " + C7136a.m2460a(this.accessFlags));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  superclass_idx:      ");
            sb2.append(C0438g.m26475j(indexOf));
            sb2.append(" // ");
            C7214e0 c7214e02 = this.superclass;
            String str = "<none>";
            if (c7214e02 == null) {
                human = "<none>";
            } else {
                human = c7214e02.toHuman();
            }
            sb2.append(human);
            interfaceC0428a.mo26502d(4, sb2.toString());
            interfaceC0428a.mo26502d(4, "  interfaces_off:      " + C0438g.m26475j(absoluteOffsetOr0));
            if (absoluteOffsetOr0 != 0) {
                InterfaceC7404e list = this.interfaces.getList();
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    interfaceC0428a.mo26502d(0, "    " + list.getType(i2).toHuman());
                }
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("  source_file_idx:     ");
            sb3.append(C0438g.m26475j(i));
            sb3.append(" // ");
            C7212d0 c7212d0 = this.sourceFile;
            if (c7212d0 != null) {
                str = c7212d0.toHuman();
            }
            sb3.append(str);
            interfaceC0428a.mo26502d(4, sb3.toString());
            interfaceC0428a.mo26502d(4, "  annotations_off:     " + C0438g.m26475j(absoluteOffset));
            interfaceC0428a.mo26502d(4, "  class_data_off:      " + C0438g.m26475j(absoluteOffset2));
            interfaceC0428a.mo26502d(4, "  static_values_off:   " + C0438g.m26475j(absoluteOffsetOr02));
        }
        interfaceC0428a.writeInt(indexOf2);
        interfaceC0428a.writeInt(this.accessFlags);
        interfaceC0428a.writeInt(indexOf);
        interfaceC0428a.writeInt(absoluteOffsetOr0);
        interfaceC0428a.writeInt(i);
        interfaceC0428a.writeInt(absoluteOffset);
        interfaceC0428a.writeInt(absoluteOffset2);
        interfaceC0428a.writeInt(absoluteOffsetOr02);
    }

    public ClassDefItem(C7214e0 c7214e0, int i, C7214e0 c7214e02, InterfaceC7404e interfaceC7404e, C7212d0 c7212d0) {
        TypeListItem typeListItem;
        if (c7214e0 != null) {
            if (interfaceC7404e != null) {
                this.thisClass = c7214e0;
                this.accessFlags = i;
                this.superclass = c7214e02;
                if (interfaceC7404e.size() == 0) {
                    typeListItem = null;
                } else {
                    typeListItem = new TypeListItem(interfaceC7404e);
                }
                this.interfaces = typeListItem;
                this.sourceFile = c7212d0;
                this.classData = new ClassDataItem(c7214e0);
                this.staticValuesItem = null;
                this.annotationsDirectory = new AnnotationsDirectoryItem();
                return;
            }
            throw new NullPointerException("interfaces == null");
        }
        throw new NullPointerException("thisClass == null");
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        MixedItemSection m24490b = dexFile.m24490b();
        MixedItemSection m24481k = dexFile.m24481k();
        MixedItemSection m24482j = dexFile.m24482j();
        StringIdsSection m24483i = dexFile.m24483i();
        typeIds.intern(this.thisClass);
        if (!this.classData.isEmpty()) {
            dexFile.m24489c().add(this.classData);
            C7210d staticValuesConstant = this.classData.getStaticValuesConstant();
            if (staticValuesConstant != null) {
                this.staticValuesItem = (EncodedArrayItem) m24490b.intern(new EncodedArrayItem(staticValuesConstant));
            }
        }
        C7214e0 c7214e0 = this.superclass;
        if (c7214e0 != null) {
            typeIds.intern(c7214e0);
        }
        TypeListItem typeListItem = this.interfaces;
        if (typeListItem != null) {
            this.interfaces = (TypeListItem) m24482j.intern(typeListItem);
        }
        C7212d0 c7212d0 = this.sourceFile;
        if (c7212d0 != null) {
            m24483i.intern(c7212d0);
        }
        if (!this.annotationsDirectory.isEmpty()) {
            if (this.annotationsDirectory.isInternable()) {
                this.annotationsDirectory = (AnnotationsDirectoryItem) m24481k.intern(this.annotationsDirectory);
            } else {
                m24481k.add(this.annotationsDirectory);
            }
        }
    }

    public void debugPrint(Writer writer, boolean z) {
        PrintWriter m26431a = C0453u.m26431a(writer);
        m26431a.println(ClassDefItem.class.getName() + " {");
        m26431a.println("  accessFlags: " + C0438g.m26478g(this.accessFlags));
        m26431a.println("  superclass: " + this.superclass);
        StringBuilder sb = new StringBuilder();
        sb.append("  interfaces: ");
        TypeListItem typeListItem = this.interfaces;
        String str = "<none>";
        if (typeListItem == null) {
            typeListItem = "<none>";
        }
        sb.append(typeListItem);
        m26431a.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  sourceFile: ");
        C7212d0 c7212d0 = this.sourceFile;
        if (c7212d0 != null) {
            str = c7212d0.m2116C();
        }
        sb2.append(str);
        m26431a.println(sb2.toString());
        this.classData.debugPrint(writer, z);
        this.annotationsDirectory.m24494c(m26431a);
        m26431a.println("}");
    }
}
