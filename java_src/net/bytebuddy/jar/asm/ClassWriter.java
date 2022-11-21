package net.bytebuddy.jar.asm;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
import net.bytebuddy.jar.asm.Attribute;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class ClassWriter extends ClassVisitor {
    public static final int COMPUTE_FRAMES = 2;
    public static final int COMPUTE_MAXS = 1;
    private int accessFlags;
    private int compute;
    private ByteVector debugExtension;
    private int enclosingClassIndex;
    private int enclosingMethodIndex;
    private Attribute firstAttribute;
    private FieldWriter firstField;
    private MethodWriter firstMethod;
    private RecordComponentWriter firstRecordComponent;
    private final int flags;
    private ByteVector innerClasses;
    private int interfaceCount;
    private int[] interfaces;
    private FieldWriter lastField;
    private MethodWriter lastMethod;
    private RecordComponentWriter lastRecordComponent;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private ModuleWriter moduleWriter;
    private int nestHostClassIndex;
    private ByteVector nestMemberClasses;
    private int numberOfInnerClasses;
    private int numberOfNestMemberClasses;
    private int numberOfPermittedSubclasses;
    private ByteVector permittedSubclasses;
    private int signatureIndex;
    private int sourceFileIndex;
    private int superClass;
    private final SymbolTable symbolTable;
    private int thisClass;
    private int version;

    public ClassWriter(int i) {
        this(null, i);
    }

    public ClassLoader getClassLoader() {
        return getClass().getClassLoader();
    }

    public boolean hasFlags(int i) {
        return (this.flags & i) == i;
    }

    public int newClass(String str) {
        return this.symbolTable.m14859c(str).f19224a;
    }

    public int newConst(Object obj) {
        return this.symbolTable.m14860b(obj).f19224a;
    }

    public int newConstantDynamic(String str, String str2, Handle handle, Object... objArr) {
        return this.symbolTable.m14857e(str, str2, handle, objArr).f19224a;
    }

    public int newField(String str, String str2, String str3) {
        return this.symbolTable.m14856f(str, str2, str3).f19224a;
    }

    @Deprecated
    public int newHandle(int i, String str, String str2, String str3) {
        return newHandle(i, str, str2, str3, i == 9);
    }

    public int newInvokeDynamic(String str, String str2, Handle handle, Object... objArr) {
        return this.symbolTable.m14853i(str, str2, handle, objArr).f19224a;
    }

    public int newMethod(String str, String str2, String str3, boolean z) {
        return this.symbolTable.m14849m(str, str2, str3, z).f19224a;
    }

    public int newMethodType(String str) {
        return this.symbolTable.m14850l(str).f19224a;
    }

    public int newModule(String str) {
        return this.symbolTable.m14848n(str).f19224a;
    }

    public int newNameType(String str, String str2) {
        return this.symbolTable.m14847o(str, str2);
    }

    public int newPackage(String str) {
        return this.symbolTable.m14846p(str).f19224a;
    }

    public int newUTF8(String str) {
        return this.symbolTable.m14844r(str);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visitEnd() {
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visitNestHost(String str) {
        this.nestHostClassIndex = this.symbolTable.m14859c(str).f19224a;
    }

    public ClassWriter(ClassReader classReader, int i) {
        super(Opcodes.ASM9);
        this.flags = i;
        this.symbolTable = classReader == null ? new SymbolTable(this) : new SymbolTable(this, classReader);
        if ((i & 2) != 0) {
            this.compute = 4;
        } else if ((i & 1) != 0) {
            this.compute = 1;
        } else {
            this.compute = 0;
        }
    }

    private Attribute[] getAttributePrototypes() {
        Attribute.Set set = new Attribute.Set();
        set.m14920a(this.firstAttribute);
        for (FieldWriter fieldWriter = this.firstField; fieldWriter != null; fieldWriter = (FieldWriter) fieldWriter.f19200fv) {
            fieldWriter.m14907a(set);
        }
        for (MethodWriter methodWriter = this.firstMethod; methodWriter != null; methodWriter = (MethodWriter) methodWriter.f19219mv) {
            methodWriter.m14882b(set);
        }
        for (RecordComponentWriter recordComponentWriter = this.firstRecordComponent; recordComponentWriter != null; recordComponentWriter = (RecordComponentWriter) recordComponentWriter.f19223a) {
            recordComponentWriter.m14870a(set);
        }
        return set.m14919b();
    }

    public int newHandle(int i, String str, String str2, String str3, boolean z) {
        return this.symbolTable.m14851k(i, str, str2, str3, z).f19224a;
    }

    public byte[] toByteArray() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = (this.interfaceCount * 2) + 24;
        int i8 = 0;
        for (FieldWriter fieldWriter = this.firstField; fieldWriter != null; fieldWriter = (FieldWriter) fieldWriter.f19200fv) {
            i8++;
            i7 += fieldWriter.m14906b();
        }
        int i9 = 0;
        for (MethodWriter methodWriter = this.firstMethod; methodWriter != null; methodWriter = (MethodWriter) methodWriter.f19219mv) {
            i9++;
            i7 += methodWriter.m14881c();
        }
        ByteVector byteVector = this.innerClasses;
        if (byteVector != null) {
            i7 += byteVector.f19174b + 8;
            this.symbolTable.m14844r("InnerClasses");
            i = 1;
        } else {
            i = 0;
        }
        if (this.enclosingClassIndex != 0) {
            i++;
            i7 += 10;
            this.symbolTable.m14844r("EnclosingMethod");
        }
        if ((this.accessFlags & 4096) != 0 && (this.version & MeshBuilder.MAX_INDEX) < 49) {
            i++;
            i7 += 6;
            this.symbolTable.m14844r("Synthetic");
        }
        if (this.signatureIndex != 0) {
            i++;
            i7 += 8;
            this.symbolTable.m14844r("Signature");
        }
        if (this.sourceFileIndex != 0) {
            i++;
            i7 += 8;
            this.symbolTable.m14844r("SourceFile");
        }
        ByteVector byteVector2 = this.debugExtension;
        if (byteVector2 != null) {
            i++;
            i7 += byteVector2.f19174b + 6;
            this.symbolTable.m14844r("SourceDebugExtension");
        }
        if ((this.accessFlags & 131072) != 0) {
            i++;
            i7 += 6;
            this.symbolTable.m14844r("Deprecated");
        }
        AnnotationWriter annotationWriter = this.lastRuntimeVisibleAnnotation;
        if (annotationWriter != null) {
            i++;
            i7 += annotationWriter.m14935a("RuntimeVisibleAnnotations");
        }
        AnnotationWriter annotationWriter2 = this.lastRuntimeInvisibleAnnotation;
        if (annotationWriter2 != null) {
            i++;
            i7 += annotationWriter2.m14935a("RuntimeInvisibleAnnotations");
        }
        AnnotationWriter annotationWriter3 = this.lastRuntimeVisibleTypeAnnotation;
        if (annotationWriter3 != null) {
            i++;
            i7 += annotationWriter3.m14935a("RuntimeVisibleTypeAnnotations");
        }
        AnnotationWriter annotationWriter4 = this.lastRuntimeInvisibleTypeAnnotation;
        if (annotationWriter4 != null) {
            i++;
            i7 += annotationWriter4.m14935a("RuntimeInvisibleTypeAnnotations");
        }
        if (this.symbolTable.m14840v() > 0) {
            i++;
            i7 += this.symbolTable.m14840v();
        }
        ModuleWriter moduleWriter = this.moduleWriter;
        if (moduleWriter != null) {
            i += moduleWriter.m14872b();
            i7 += this.moduleWriter.m14873a();
        }
        if (this.nestHostClassIndex != 0) {
            i++;
            i7 += 8;
            this.symbolTable.m14844r("NestHost");
        }
        ByteVector byteVector3 = this.nestMemberClasses;
        if (byteVector3 != null) {
            i++;
            i7 += byteVector3.f19174b + 8;
            this.symbolTable.m14844r("NestMembers");
        }
        ByteVector byteVector4 = this.permittedSubclasses;
        if (byteVector4 != null) {
            i++;
            i7 += byteVector4.f19174b + 8;
            this.symbolTable.m14844r("PermittedSubclasses");
        }
        if ((this.accessFlags & 65536) == 0 && this.firstRecordComponent == null) {
            i2 = 0;
            i3 = 0;
        } else {
            i2 = 0;
            i3 = 0;
            for (RecordComponentWriter recordComponentWriter = this.firstRecordComponent; recordComponentWriter != null; recordComponentWriter = (RecordComponentWriter) recordComponentWriter.f19223a) {
                i3++;
                i2 += recordComponentWriter.m14869b();
            }
            i++;
            i7 += i2 + 8;
            this.symbolTable.m14844r("Record");
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            int m14924d = i + attribute.m14924d();
            i7 += this.firstAttribute.m14927a(this.symbolTable);
            i = m14924d;
        }
        int m14837y = i7 + this.symbolTable.m14837y();
        int m14838x = this.symbolTable.m14838x();
        if (m14838x <= 65535) {
            ByteVector byteVector5 = new ByteVector(m14837y);
            byteVector5.putInt(-889275714).putInt(this.version);
            this.symbolTable.m14863D(byteVector5);
            if ((this.version & MeshBuilder.MAX_INDEX) < 49) {
                i4 = 4096;
            } else {
                i4 = 0;
            }
            byteVector5.putShort((i4 ^ (-1)) & this.accessFlags).putShort(this.thisClass).putShort(this.superClass);
            byteVector5.putShort(this.interfaceCount);
            for (int i10 = 0; i10 < this.interfaceCount; i10++) {
                byteVector5.putShort(this.interfaces[i10]);
            }
            byteVector5.putShort(i8);
            for (FieldWriter fieldWriter2 = this.firstField; fieldWriter2 != null; fieldWriter2 = (FieldWriter) fieldWriter2.f19200fv) {
                fieldWriter2.m14905c(byteVector5);
            }
            byteVector5.putShort(i9);
            boolean z = false;
            boolean z2 = false;
            for (MethodWriter methodWriter2 = this.firstMethod; methodWriter2 != null; methodWriter2 = (MethodWriter) methodWriter2.f19219mv) {
                z |= methodWriter2.m14879e();
                z2 |= methodWriter2.m14880d();
                methodWriter2.m14878f(byteVector5);
            }
            byteVector5.putShort(i);
            if (this.innerClasses != null) {
                ByteVector putShort = byteVector5.putShort(this.symbolTable.m14844r("InnerClasses")).putInt(this.innerClasses.f19174b + 2).putShort(this.numberOfInnerClasses);
                ByteVector byteVector6 = this.innerClasses;
                putShort.putByteArray(byteVector6.f19173a, 0, byteVector6.f19174b);
            }
            if (this.enclosingClassIndex != 0) {
                byteVector5.putShort(this.symbolTable.m14844r("EnclosingMethod")).putInt(4).putShort(this.enclosingClassIndex).putShort(this.enclosingMethodIndex);
            }
            if ((this.accessFlags & 4096) != 0 && (this.version & MeshBuilder.MAX_INDEX) < 49) {
                byteVector5.putShort(this.symbolTable.m14844r("Synthetic")).putInt(0);
            }
            if (this.signatureIndex != 0) {
                i5 = 2;
                byteVector5.putShort(this.symbolTable.m14844r("Signature")).putInt(2).putShort(this.signatureIndex);
            } else {
                i5 = 2;
            }
            if (this.sourceFileIndex != 0) {
                byteVector5.putShort(this.symbolTable.m14844r("SourceFile")).putInt(i5).putShort(this.sourceFileIndex);
            }
            ByteVector byteVector7 = this.debugExtension;
            if (byteVector7 != null) {
                int i11 = byteVector7.f19174b;
                i6 = 0;
                byteVector5.putShort(this.symbolTable.m14844r("SourceDebugExtension")).putInt(i11).putByteArray(this.debugExtension.f19173a, 0, i11);
            } else {
                i6 = 0;
            }
            if ((this.accessFlags & 131072) != 0) {
                byteVector5.putShort(this.symbolTable.m14844r("Deprecated")).putInt(i6);
            }
            AnnotationWriter.m14929g(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector5);
            this.symbolTable.m14864C(byteVector5);
            ModuleWriter moduleWriter2 = this.moduleWriter;
            if (moduleWriter2 != null) {
                moduleWriter2.m14871c(byteVector5);
            }
            if (this.nestHostClassIndex != 0) {
                byteVector5.putShort(this.symbolTable.m14844r("NestHost")).putInt(2).putShort(this.nestHostClassIndex);
            }
            if (this.nestMemberClasses != null) {
                ByteVector putShort2 = byteVector5.putShort(this.symbolTable.m14844r("NestMembers")).putInt(this.nestMemberClasses.f19174b + 2).putShort(this.numberOfNestMemberClasses);
                ByteVector byteVector8 = this.nestMemberClasses;
                putShort2.putByteArray(byteVector8.f19173a, 0, byteVector8.f19174b);
            }
            if (this.permittedSubclasses != null) {
                ByteVector putShort3 = byteVector5.putShort(this.symbolTable.m14844r("PermittedSubclasses")).putInt(this.permittedSubclasses.f19174b + 2).putShort(this.numberOfPermittedSubclasses);
                ByteVector byteVector9 = this.permittedSubclasses;
                putShort3.putByteArray(byteVector9.f19173a, 0, byteVector9.f19174b);
            }
            if ((this.accessFlags & 65536) != 0 || this.firstRecordComponent != null) {
                byteVector5.putShort(this.symbolTable.m14844r("Record")).putInt(i2 + 2).putShort(i3);
                for (RecordComponentWriter recordComponentWriter2 = this.firstRecordComponent; recordComponentWriter2 != null; recordComponentWriter2 = (RecordComponentWriter) recordComponentWriter2.f19223a) {
                    recordComponentWriter2.m14868c(byteVector5);
                }
            }
            Attribute attribute2 = this.firstAttribute;
            if (attribute2 != null) {
                attribute2.m14922f(this.symbolTable, byteVector5);
            }
            if (z2) {
                return replaceAsmInstructions(byteVector5.f19173a, z);
            }
            return byteVector5.f19173a;
        }
        throw new ClassTooLargeException(this.symbolTable.m14839w(), m14838x);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
        int i3;
        this.version = i;
        this.accessFlags = i2;
        SymbolTable symbolTable = this.symbolTable;
        int i4 = i & MeshBuilder.MAX_INDEX;
        this.thisClass = symbolTable.m14862E(i4, str);
        if (str2 != null) {
            this.signatureIndex = this.symbolTable.m14844r(str2);
        }
        if (str3 == null) {
            i3 = 0;
        } else {
            i3 = this.symbolTable.m14859c(str3).f19224a;
        }
        this.superClass = i3;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.interfaceCount = length;
            this.interfaces = new int[length];
            for (int i5 = 0; i5 < this.interfaceCount; i5++) {
                this.interfaces[i5] = this.symbolTable.m14859c(strArr[i5]).f19224a;
            }
        }
        if (this.compute == 1 && i4 >= 51) {
            this.compute = 2;
        }
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final AnnotationVisitor visitAnnotation(String str, boolean z) {
        if (z) {
            AnnotationWriter m14931e = AnnotationWriter.m14931e(this.symbolTable, str, this.lastRuntimeVisibleAnnotation);
            this.lastRuntimeVisibleAnnotation = m14931e;
            return m14931e;
        }
        AnnotationWriter m14931e2 = AnnotationWriter.m14931e(this.symbolTable, str, this.lastRuntimeInvisibleAnnotation);
        this.lastRuntimeInvisibleAnnotation = m14931e2;
        return m14931e2;
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visitAttribute(Attribute attribute) {
        attribute.f19172a = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final FieldVisitor visitField(int i, String str, String str2, String str3, Object obj) {
        FieldWriter fieldWriter = new FieldWriter(this.symbolTable, i, str, str2, str3, obj);
        if (this.firstField == null) {
            this.firstField = fieldWriter;
        } else {
            this.lastField.f19200fv = fieldWriter;
        }
        this.lastField = fieldWriter;
        return fieldWriter;
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visitInnerClass(String str, String str2, String str3, int i) {
        int i2;
        if (this.innerClasses == null) {
            this.innerClasses = new ByteVector();
        }
        Symbol m14859c = this.symbolTable.m14859c(str);
        if (m14859c.f19230g == 0) {
            this.numberOfInnerClasses++;
            this.innerClasses.putShort(m14859c.f19224a);
            ByteVector byteVector = this.innerClasses;
            int i3 = 0;
            if (str2 == null) {
                i2 = 0;
            } else {
                i2 = this.symbolTable.m14859c(str2).f19224a;
            }
            byteVector.putShort(i2);
            ByteVector byteVector2 = this.innerClasses;
            if (str3 != null) {
                i3 = this.symbolTable.m14844r(str3);
            }
            byteVector2.putShort(i3);
            this.innerClasses.putShort(i);
            m14859c.f19230g = this.numberOfInnerClasses;
        }
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final MethodVisitor visitMethod(int i, String str, String str2, String str3, String[] strArr) {
        MethodWriter methodWriter = new MethodWriter(this.symbolTable, i, str, str2, str3, strArr, this.compute);
        if (this.firstMethod == null) {
            this.firstMethod = methodWriter;
        } else {
            this.lastMethod.f19219mv = methodWriter;
        }
        this.lastMethod = methodWriter;
        return methodWriter;
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final ModuleVisitor visitModule(String str, int i, String str2) {
        int m14844r;
        SymbolTable symbolTable = this.symbolTable;
        int i2 = symbolTable.m14848n(str).f19224a;
        if (str2 == null) {
            m14844r = 0;
        } else {
            m14844r = this.symbolTable.m14844r(str2);
        }
        ModuleWriter moduleWriter = new ModuleWriter(symbolTable, i2, i, m14844r);
        this.moduleWriter = moduleWriter;
        return moduleWriter;
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visitNestMember(String str) {
        if (this.nestMemberClasses == null) {
            this.nestMemberClasses = new ByteVector();
        }
        this.numberOfNestMemberClasses++;
        this.nestMemberClasses.putShort(this.symbolTable.m14859c(str).f19224a);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visitOuterClass(String str, String str2, String str3) {
        this.enclosingClassIndex = this.symbolTable.m14859c(str).f19224a;
        if (str2 != null && str3 != null) {
            this.enclosingMethodIndex = this.symbolTable.m14847o(str2, str3);
        }
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visitPermittedSubclass(String str) {
        if (this.permittedSubclasses == null) {
            this.permittedSubclasses = new ByteVector();
        }
        this.numberOfPermittedSubclasses++;
        this.permittedSubclasses.putShort(this.symbolTable.m14859c(str).f19224a);
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final RecordComponentVisitor visitRecordComponent(String str, String str2, String str3) {
        RecordComponentWriter recordComponentWriter = new RecordComponentWriter(this.symbolTable, str, str2, str3);
        if (this.firstRecordComponent == null) {
            this.firstRecordComponent = recordComponentWriter;
        } else {
            this.lastRecordComponent.f19223a = recordComponentWriter;
        }
        this.lastRecordComponent = recordComponentWriter;
        return recordComponentWriter;
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final void visitSource(String str, String str2) {
        if (str != null) {
            this.sourceFileIndex = this.symbolTable.m14844r(str);
        }
        if (str2 != null) {
            this.debugExtension = new ByteVector().m14918a(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override // net.bytebuddy.jar.asm.ClassVisitor
    public final AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter m14932d = AnnotationWriter.m14932d(this.symbolTable, i, typePath, str, this.lastRuntimeVisibleTypeAnnotation);
            this.lastRuntimeVisibleTypeAnnotation = m14932d;
            return m14932d;
        }
        AnnotationWriter m14932d2 = AnnotationWriter.m14932d(this.symbolTable, i, typePath, str, this.lastRuntimeInvisibleTypeAnnotation);
        this.lastRuntimeInvisibleTypeAnnotation = m14932d2;
        return m14932d2;
    }

    private byte[] replaceAsmInstructions(byte[] bArr, boolean z) {
        int i;
        Attribute[] attributePrototypes = getAttributePrototypes();
        this.firstField = null;
        this.lastField = null;
        this.firstMethod = null;
        this.lastMethod = null;
        this.lastRuntimeVisibleAnnotation = null;
        this.lastRuntimeInvisibleAnnotation = null;
        this.lastRuntimeVisibleTypeAnnotation = null;
        this.lastRuntimeInvisibleTypeAnnotation = null;
        this.moduleWriter = null;
        int i2 = 0;
        this.nestHostClassIndex = 0;
        this.numberOfNestMemberClasses = 0;
        this.nestMemberClasses = null;
        this.numberOfPermittedSubclasses = 0;
        this.permittedSubclasses = null;
        this.firstRecordComponent = null;
        this.lastRecordComponent = null;
        this.firstAttribute = null;
        if (z) {
            i = 3;
        } else {
            i = 0;
        }
        this.compute = i;
        ClassReader classReader = new ClassReader(bArr, 0, false);
        if (z) {
            i2 = 8;
        }
        classReader.accept(this, attributePrototypes, i2 | 256);
        return toByteArray();
    }

    public String getCommonSuperClass(String str, String str2) {
        ClassLoader classLoader = getClassLoader();
        try {
            Class<?> cls = Class.forName(str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH), false, classLoader);
            try {
                Class<?> cls2 = Class.forName(str2.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH), false, classLoader);
                if (cls.isAssignableFrom(cls2)) {
                    return str;
                }
                if (cls2.isAssignableFrom(cls)) {
                    return str2;
                }
                if (!cls.isInterface() && !cls2.isInterface()) {
                    do {
                        cls = cls.getSuperclass();
                    } while (!cls.isAssignableFrom(cls2));
                    return cls.getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
                }
                return TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_INTERNAL_NAME;
            } catch (ClassNotFoundException e) {
                throw new TypeNotPresentException(str2, e);
            }
        } catch (ClassNotFoundException e2) {
            throw new TypeNotPresentException(str, e2);
        }
    }
}
