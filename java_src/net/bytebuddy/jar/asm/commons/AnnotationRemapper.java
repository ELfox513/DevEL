package net.bytebuddy.jar.asm.commons;

import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.Opcodes;
/* loaded from: classes.dex */
public class AnnotationRemapper extends AnnotationVisitor {
    public final String descriptor;
    public final Remapper remapper;

    @Deprecated
    public AnnotationRemapper(AnnotationVisitor annotationVisitor, Remapper remapper) {
        this((String) null, annotationVisitor, remapper);
    }

    @Deprecated
    public AnnotationVisitor createAnnotationRemapper(AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, null, annotationVisitor, this.remapper);
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public void visit(String str, Object obj) {
        super.visit(mapAnnotationAttributeName(str), this.remapper.mapValue(obj));
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public void visitEnum(String str, String str2, String str3) {
        super.visitEnum(mapAnnotationAttributeName(str), this.remapper.mapDesc(str2), str3);
    }

    public AnnotationRemapper(String str, AnnotationVisitor annotationVisitor, Remapper remapper) {
        this(Opcodes.ASM9, str, annotationVisitor, remapper);
    }

    private String mapAnnotationAttributeName(String str) {
        String str2 = this.descriptor;
        if (str2 == null) {
            return str;
        }
        return this.remapper.mapAnnotationAttributeName(str2, str);
    }

    public AnnotationVisitor createAnnotationRemapper(String str, AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, str, annotationVisitor, this.remapper).m14832a(createAnnotationRemapper(annotationVisitor));
    }

    @Deprecated
    public AnnotationRemapper(int i, AnnotationVisitor annotationVisitor, Remapper remapper) {
        this(i, null, annotationVisitor, remapper);
    }

    /* renamed from: a */
    public final AnnotationVisitor m14832a(AnnotationVisitor annotationVisitor) {
        if (annotationVisitor.getClass() == getClass()) {
            AnnotationRemapper annotationRemapper = (AnnotationRemapper) annotationVisitor;
            if (annotationRemapper.api == this.api && annotationRemapper.f19171av == this.f19171av && annotationRemapper.remapper == this.remapper) {
                return this;
            }
        }
        return annotationVisitor;
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public AnnotationVisitor visitAnnotation(String str, String str2) {
        AnnotationVisitor visitAnnotation = super.visitAnnotation(mapAnnotationAttributeName(str), this.remapper.mapDesc(str2));
        if (visitAnnotation == null) {
            return null;
        }
        if (visitAnnotation == this.f19171av) {
            return this;
        }
        return createAnnotationRemapper(str2, visitAnnotation);
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public AnnotationVisitor visitArray(String str) {
        AnnotationVisitor visitArray = super.visitArray(mapAnnotationAttributeName(str));
        if (visitArray == null) {
            return null;
        }
        if (visitArray == this.f19171av) {
            return this;
        }
        return createAnnotationRemapper(null, visitArray);
    }

    public AnnotationRemapper(int i, String str, AnnotationVisitor annotationVisitor, Remapper remapper) {
        super(i, annotationVisitor);
        this.descriptor = str;
        this.remapper = remapper;
    }
}
