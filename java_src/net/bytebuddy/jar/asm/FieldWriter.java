package net.bytebuddy.jar.asm;

import net.bytebuddy.jar.asm.Attribute;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class FieldWriter extends FieldVisitor {
    private final int accessFlags;
    private int constantValueIndex;
    private final int descriptorIndex;
    private Attribute firstAttribute;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private final int nameIndex;
    private int signatureIndex;
    private final SymbolTable symbolTable;

    /* renamed from: a */
    public final void m14907a(Attribute.Set set) {
        set.m14920a(this.firstAttribute);
    }

    @Override // net.bytebuddy.jar.asm.FieldVisitor
    public void visitEnd() {
    }

    public FieldWriter(SymbolTable symbolTable, int i, String str, String str2, String str3, Object obj) {
        super(Opcodes.ASM9);
        this.symbolTable = symbolTable;
        this.accessFlags = i;
        this.nameIndex = symbolTable.m14844r(str);
        this.descriptorIndex = symbolTable.m14844r(str2);
        if (str3 != null) {
            this.signatureIndex = symbolTable.m14844r(str3);
        }
        if (obj != null) {
            this.constantValueIndex = symbolTable.m14860b(obj).f19224a;
        }
    }

    /* renamed from: b */
    public int m14906b() {
        int i;
        if (this.constantValueIndex != 0) {
            this.symbolTable.m14844r("ConstantValue");
            i = 16;
        } else {
            i = 8;
        }
        int m14926b = i + Attribute.m14926b(this.symbolTable, this.accessFlags, this.signatureIndex) + AnnotationWriter.m14934b(this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation);
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            return m14926b + attribute.m14927a(this.symbolTable);
        }
        return m14926b;
    }

    /* renamed from: c */
    public void m14905c(ByteVector byteVector) {
        boolean z;
        int i;
        int i2 = 0;
        if (this.symbolTable.m14836z() < 49) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = 4096;
        } else {
            i = 0;
        }
        byteVector.putShort((i ^ (-1)) & this.accessFlags).putShort(this.nameIndex).putShort(this.descriptorIndex);
        if (this.constantValueIndex != 0) {
            i2 = 1;
        }
        int i3 = this.accessFlags;
        if ((i3 & 4096) != 0 && z) {
            i2++;
        }
        if (this.signatureIndex != 0) {
            i2++;
        }
        if ((131072 & i3) != 0) {
            i2++;
        }
        if (this.lastRuntimeVisibleAnnotation != null) {
            i2++;
        }
        if (this.lastRuntimeInvisibleAnnotation != null) {
            i2++;
        }
        if (this.lastRuntimeVisibleTypeAnnotation != null) {
            i2++;
        }
        if (this.lastRuntimeInvisibleTypeAnnotation != null) {
            i2++;
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            i2 += attribute.m14924d();
        }
        byteVector.putShort(i2);
        if (this.constantValueIndex != 0) {
            byteVector.putShort(this.symbolTable.m14844r("ConstantValue")).putInt(2).putShort(this.constantValueIndex);
        }
        Attribute.m14923e(this.symbolTable, this.accessFlags, this.signatureIndex, byteVector);
        AnnotationWriter.m14929g(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector);
        Attribute attribute2 = this.firstAttribute;
        if (attribute2 != null) {
            attribute2.m14922f(this.symbolTable, byteVector);
        }
    }

    @Override // net.bytebuddy.jar.asm.FieldVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        if (z) {
            AnnotationWriter m14931e = AnnotationWriter.m14931e(this.symbolTable, str, this.lastRuntimeVisibleAnnotation);
            this.lastRuntimeVisibleAnnotation = m14931e;
            return m14931e;
        }
        AnnotationWriter m14931e2 = AnnotationWriter.m14931e(this.symbolTable, str, this.lastRuntimeInvisibleAnnotation);
        this.lastRuntimeInvisibleAnnotation = m14931e2;
        return m14931e2;
    }

    @Override // net.bytebuddy.jar.asm.FieldVisitor
    public void visitAttribute(Attribute attribute) {
        attribute.f19172a = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    @Override // net.bytebuddy.jar.asm.FieldVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (z) {
            AnnotationWriter m14932d = AnnotationWriter.m14932d(this.symbolTable, i, typePath, str, this.lastRuntimeVisibleTypeAnnotation);
            this.lastRuntimeVisibleTypeAnnotation = m14932d;
            return m14932d;
        }
        AnnotationWriter m14932d2 = AnnotationWriter.m14932d(this.symbolTable, i, typePath, str, this.lastRuntimeInvisibleTypeAnnotation);
        this.lastRuntimeInvisibleTypeAnnotation = m14932d2;
        return m14932d2;
    }
}
