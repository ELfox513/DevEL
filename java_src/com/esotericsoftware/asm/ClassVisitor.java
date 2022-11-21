package com.esotericsoftware.asm;
/* loaded from: classes.dex */
public abstract class ClassVisitor {
    public final int api;

    /* renamed from: cv */
    public ClassVisitor f6991cv;

    public ClassVisitor(int i) {
        this(i, null);
    }

    public ClassVisitor(int i, ClassVisitor classVisitor) {
        if (i != 262144 && i != 327680) {
            throw new IllegalArgumentException();
        }
        this.api = i;
        this.f6991cv = classVisitor;
    }

    public void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            classVisitor.visit(i, i2, str, str2, str3, strArr);
        }
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            return classVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            classVisitor.visitAttribute(attribute);
        }
    }

    public void visitEnd() {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            classVisitor.visitEnd();
        }
    }

    public FieldVisitor visitField(int i, String str, String str2, String str3, Object obj) {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            return classVisitor.visitField(i, str, str2, str3, obj);
        }
        return null;
    }

    public void visitInnerClass(String str, String str2, String str3, int i) {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            classVisitor.visitInnerClass(str, str2, str3, i);
        }
    }

    public MethodVisitor visitMethod(int i, String str, String str2, String str3, String[] strArr) {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            return classVisitor.visitMethod(i, str, str2, str3, strArr);
        }
        return null;
    }

    public void visitOuterClass(String str, String str2, String str3) {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            classVisitor.visitOuterClass(str, str2, str3);
        }
    }

    public void visitSource(String str, String str2) {
        ClassVisitor classVisitor = this.f6991cv;
        if (classVisitor != null) {
            classVisitor.visitSource(str, str2);
        }
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            ClassVisitor classVisitor = this.f6991cv;
            if (classVisitor != null) {
                return classVisitor.visitTypeAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }
}
