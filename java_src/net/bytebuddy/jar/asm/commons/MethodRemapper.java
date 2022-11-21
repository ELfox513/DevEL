package net.bytebuddy.jar.asm.commons;

import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.TypePath;
/* loaded from: classes.dex */
public class MethodRemapper extends MethodVisitor {
    public final Remapper remapper;

    public MethodRemapper(MethodVisitor methodVisitor, Remapper remapper) {
        this(Opcodes.ASM9, methodVisitor, remapper);
    }

    @Deprecated
    public AnnotationVisitor createAnnotationRemapper(AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, null, annotationVisitor, this.remapper);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        Object[] objArr2 = new Object[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            objArr2[i] = this.remapper.mapValue(objArr[i]);
        }
        super.visitInvokeDynamicInsn(this.remapper.mapInvokeDynamicMethodName(str, str2), this.remapper.mapMethodDesc(str2), (Handle) this.remapper.mapValue(handle), objArr2);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLdcInsn(Object obj) {
        super.visitLdcInsn(this.remapper.mapValue(obj));
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitLocalVariableAnnotation(int i, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
        AnnotationVisitor visitLocalVariableAnnotation = super.visitLocalVariableAnnotation(i, typePath, labelArr, labelArr2, iArr, this.remapper.mapDesc(str), z);
        if (visitLocalVariableAnnotation != null) {
            return createAnnotationRemapper(str, visitLocalVariableAnnotation);
        }
        return visitLocalVariableAnnotation;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitMultiANewArrayInsn(String str, int i) {
        super.visitMultiANewArrayInsn(this.remapper.mapDesc(str), i);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
        super.visitTryCatchBlock(label, label2, label3, str == null ? null : this.remapper.mapType(str));
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitTypeInsn(int i, String str) {
        super.visitTypeInsn(i, this.remapper.mapType(str));
    }

    public MethodRemapper(int i, MethodVisitor methodVisitor, Remapper remapper) {
        super(i, methodVisitor);
        this.remapper = remapper;
    }

    private Object[] remapFrameTypes(int i, Object[] objArr) {
        if (objArr == null) {
            return objArr;
        }
        Object[] objArr2 = null;
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] instanceof String) {
                if (objArr2 == null) {
                    objArr2 = new Object[i];
                    System.arraycopy(objArr, 0, objArr2, 0, i);
                }
                objArr2[i2] = this.remapper.mapType((String) objArr[i2]);
            }
        }
        if (objArr2 != null) {
            return objArr2;
        }
        return objArr;
    }

    public AnnotationVisitor createAnnotationRemapper(String str, AnnotationVisitor annotationVisitor) {
        return new AnnotationRemapper(this.api, str, annotationVisitor, this.remapper).m14832a(createAnnotationRemapper(annotationVisitor));
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        AnnotationVisitor visitAnnotation = super.visitAnnotation(this.remapper.mapDesc(str), z);
        if (visitAnnotation != null) {
            return createAnnotationRemapper(str, visitAnnotation);
        }
        return visitAnnotation;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitFieldInsn(int i, String str, String str2, String str3) {
        super.visitFieldInsn(i, this.remapper.mapType(str), this.remapper.mapFieldName(str, str2, str3), this.remapper.mapDesc(str3));
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitInsnAnnotation(int i, TypePath typePath, String str, boolean z) {
        AnnotationVisitor visitInsnAnnotation = super.visitInsnAnnotation(i, typePath, this.remapper.mapDesc(str), z);
        if (visitInsnAnnotation != null) {
            return createAnnotationRemapper(str, visitInsnAnnotation);
        }
        return visitInsnAnnotation;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        super.visitLocalVariable(str, this.remapper.mapDesc(str2), this.remapper.mapSignature(str3, true), label, label2, i);
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
        if (this.api < 327680 && (i & 256) == 0) {
            super.visitMethodInsn(i, str, str2, str3, z);
        } else {
            super.visitMethodInsn(i, this.remapper.mapType(str), this.remapper.mapMethodName(str, str2, str3), this.remapper.mapMethodDesc(str3), z);
        }
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
        AnnotationVisitor visitParameterAnnotation = super.visitParameterAnnotation(i, this.remapper.mapDesc(str), z);
        if (visitParameterAnnotation != null) {
            return createAnnotationRemapper(str, visitParameterAnnotation);
        }
        return visitParameterAnnotation;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitTryCatchAnnotation(int i, TypePath typePath, String str, boolean z) {
        AnnotationVisitor visitTryCatchAnnotation = super.visitTryCatchAnnotation(i, typePath, this.remapper.mapDesc(str), z);
        if (visitTryCatchAnnotation != null) {
            return createAnnotationRemapper(str, visitTryCatchAnnotation);
        }
        return visitTryCatchAnnotation;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        AnnotationVisitor visitTypeAnnotation = super.visitTypeAnnotation(i, typePath, this.remapper.mapDesc(str), z);
        if (visitTypeAnnotation != null) {
            return createAnnotationRemapper(str, visitTypeAnnotation);
        }
        return visitTypeAnnotation;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public AnnotationVisitor visitAnnotationDefault() {
        AnnotationVisitor visitAnnotationDefault = super.visitAnnotationDefault();
        if (visitAnnotationDefault != null) {
            return createAnnotationRemapper(null, visitAnnotationDefault);
        }
        return visitAnnotationDefault;
    }

    @Override // net.bytebuddy.jar.asm.MethodVisitor
    public void visitFrame(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        super.visitFrame(i, i2, remapFrameTypes(i2, objArr), i3, remapFrameTypes(i3, objArr2));
    }
}
