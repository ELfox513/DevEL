package net.bytebuddy.jar.asm;

import net.bytebuddy.jar.asm.Attribute;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class RecordComponentWriter extends RecordComponentVisitor {
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
    public final void m14870a(Attribute.Set set) {
        set.m14920a(this.firstAttribute);
    }

    @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
    public void visitEnd() {
    }

    public RecordComponentWriter(SymbolTable symbolTable, String str, String str2, String str3) {
        super(Opcodes.ASM9);
        this.symbolTable = symbolTable;
        this.nameIndex = symbolTable.m14844r(str);
        this.descriptorIndex = symbolTable.m14844r(str2);
        if (str3 != null) {
            this.signatureIndex = symbolTable.m14844r(str3);
        }
    }

    /* renamed from: b */
    public int m14869b() {
        int m14926b = Attribute.m14926b(this.symbolTable, 0, this.signatureIndex) + 6 + AnnotationWriter.m14934b(this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation);
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            return m14926b + attribute.m14927a(this.symbolTable);
        }
        return m14926b;
    }

    /* renamed from: c */
    public void m14868c(ByteVector byteVector) {
        int i;
        byteVector.putShort(this.nameIndex).putShort(this.descriptorIndex);
        if (this.signatureIndex != 0) {
            i = 1;
        } else {
            i = 0;
        }
        if (this.lastRuntimeVisibleAnnotation != null) {
            i++;
        }
        if (this.lastRuntimeInvisibleAnnotation != null) {
            i++;
        }
        if (this.lastRuntimeVisibleTypeAnnotation != null) {
            i++;
        }
        if (this.lastRuntimeInvisibleTypeAnnotation != null) {
            i++;
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            i += attribute.m14924d();
        }
        byteVector.putShort(i);
        Attribute.m14923e(this.symbolTable, 0, this.signatureIndex, byteVector);
        AnnotationWriter.m14929g(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector);
        Attribute attribute2 = this.firstAttribute;
        if (attribute2 != null) {
            attribute2.m14922f(this.symbolTable, byteVector);
        }
    }

    @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
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

    @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
    public void visitAttribute(Attribute attribute) {
        attribute.f19172a = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
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
