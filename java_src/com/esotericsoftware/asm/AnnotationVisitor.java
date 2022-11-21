package com.esotericsoftware.asm;
/* loaded from: classes.dex */
public abstract class AnnotationVisitor {
    public final int api;

    /* renamed from: av */
    public AnnotationVisitor f6974av;

    public AnnotationVisitor(int i) {
        this(i, null);
    }

    public AnnotationVisitor(int i, AnnotationVisitor annotationVisitor) {
        if (i != 262144 && i != 327680) {
            throw new IllegalArgumentException();
        }
        this.api = i;
        this.f6974av = annotationVisitor;
    }

    public void visit(String str, Object obj) {
        AnnotationVisitor annotationVisitor = this.f6974av;
        if (annotationVisitor != null) {
            annotationVisitor.visit(str, obj);
        }
    }

    public AnnotationVisitor visitAnnotation(String str, String str2) {
        AnnotationVisitor annotationVisitor = this.f6974av;
        if (annotationVisitor != null) {
            return annotationVisitor.visitAnnotation(str, str2);
        }
        return null;
    }

    public AnnotationVisitor visitArray(String str) {
        AnnotationVisitor annotationVisitor = this.f6974av;
        if (annotationVisitor != null) {
            return annotationVisitor.visitArray(str);
        }
        return null;
    }

    public void visitEnd() {
        AnnotationVisitor annotationVisitor = this.f6974av;
        if (annotationVisitor != null) {
            annotationVisitor.visitEnd();
        }
    }

    public void visitEnum(String str, String str2, String str3) {
        AnnotationVisitor annotationVisitor = this.f6974av;
        if (annotationVisitor != null) {
            annotationVisitor.visitEnum(str, str2, str3);
        }
    }
}
