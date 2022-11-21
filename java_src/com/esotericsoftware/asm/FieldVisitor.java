package com.esotericsoftware.asm;
/* loaded from: classes.dex */
public abstract class FieldVisitor {
    public final int api;

    /* renamed from: fv */
    public FieldVisitor f7055fv;

    public FieldVisitor(int i) {
        this(i, null);
    }

    public FieldVisitor(int i, FieldVisitor fieldVisitor) {
        if (i != 262144 && i != 327680) {
            throw new IllegalArgumentException();
        }
        this.api = i;
        this.f7055fv = fieldVisitor;
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        FieldVisitor fieldVisitor = this.f7055fv;
        if (fieldVisitor != null) {
            return fieldVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        FieldVisitor fieldVisitor = this.f7055fv;
        if (fieldVisitor != null) {
            fieldVisitor.visitAttribute(attribute);
        }
    }

    public void visitEnd() {
        FieldVisitor fieldVisitor = this.f7055fv;
        if (fieldVisitor != null) {
            fieldVisitor.visitEnd();
        }
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            FieldVisitor fieldVisitor = this.f7055fv;
            if (fieldVisitor != null) {
                return fieldVisitor.visitTypeAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }
}
