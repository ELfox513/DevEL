package net.bytebuddy.jar.asm.commons;

import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.TypePath;
/* loaded from: classes.dex */
public class FieldRemapper extends FieldVisitor {
    public final Remapper remapper;

    public FieldRemapper(FieldVisitor fieldVisitor, Remapper remapper) {
        this(Opcodes.ASM9, fieldVisitor, remapper);
    }

    @Deprecated
    public AnnotationVisitor createAnnotationRemapper(AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, null, annotationVisitor, this.remapper);
    }

    public FieldRemapper(int i, FieldVisitor fieldVisitor, Remapper remapper) {
        super(i, fieldVisitor);
        this.remapper = remapper;
    }

    public AnnotationVisitor createAnnotationRemapper(String str, AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, str, annotationVisitor, this.remapper).m14832a(createAnnotationRemapper(annotationVisitor));
    }

    @Override // net.bytebuddy.jar.asm.FieldVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        AnnotationVisitor visitAnnotation = super.visitAnnotation(this.remapper.mapDesc(str), z);
        if (visitAnnotation == null) {
            return null;
        }
        return createAnnotationRemapper(str, visitAnnotation);
    }

    @Override // net.bytebuddy.jar.asm.FieldVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        AnnotationVisitor visitTypeAnnotation = super.visitTypeAnnotation(i, typePath, this.remapper.mapDesc(str), z);
        if (visitTypeAnnotation == null) {
            return null;
        }
        return createAnnotationRemapper(str, visitTypeAnnotation);
    }
}
