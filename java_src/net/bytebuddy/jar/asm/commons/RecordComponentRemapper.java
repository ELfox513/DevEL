package net.bytebuddy.jar.asm.commons;

import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.RecordComponentVisitor;
import net.bytebuddy.jar.asm.TypePath;
/* loaded from: classes.dex */
public class RecordComponentRemapper extends RecordComponentVisitor {
    public final Remapper remapper;

    public RecordComponentRemapper(RecordComponentVisitor recordComponentVisitor, Remapper remapper) {
        this(Opcodes.ASM9, recordComponentVisitor, remapper);
    }

    @Deprecated
    public AnnotationVisitor createAnnotationRemapper(AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, null, annotationVisitor, this.remapper);
    }

    public RecordComponentRemapper(int i, RecordComponentVisitor recordComponentVisitor, Remapper remapper) {
        super(i, recordComponentVisitor);
        this.remapper = remapper;
    }

    public AnnotationVisitor createAnnotationRemapper(String str, AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, str, annotationVisitor, this.remapper).m14832a(createAnnotationRemapper(annotationVisitor));
    }

    @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        AnnotationVisitor visitAnnotation = super.visitAnnotation(this.remapper.mapDesc(str), z);
        if (visitAnnotation == null) {
            return null;
        }
        return createAnnotationRemapper(str, visitAnnotation);
    }

    @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        AnnotationVisitor visitTypeAnnotation = super.visitTypeAnnotation(i, typePath, this.remapper.mapDesc(str), z);
        if (visitTypeAnnotation == null) {
            return null;
        }
        return createAnnotationRemapper(str, visitTypeAnnotation);
    }
}
