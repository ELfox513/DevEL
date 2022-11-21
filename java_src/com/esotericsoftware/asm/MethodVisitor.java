package com.esotericsoftware.asm;
/* loaded from: classes.dex */
public abstract class MethodVisitor {
    public final int api;

    /* renamed from: mv */
    public MethodVisitor f7107mv;

    public MethodVisitor(int i) {
        this(i, null);
    }

    public MethodVisitor(int i, MethodVisitor methodVisitor) {
        if (i != 262144 && i != 327680) {
            throw new IllegalArgumentException();
        }
        this.api = i;
        this.f7107mv = methodVisitor;
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            return methodVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public AnnotationVisitor visitAnnotationDefault() {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            return methodVisitor.visitAnnotationDefault();
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitAttribute(attribute);
        }
    }

    public void visitCode() {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitCode();
        }
    }

    public void visitEnd() {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitEnd();
        }
    }

    public void visitFieldInsn(int i, String str, String str2, String str3) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitFieldInsn(i, str, str2, str3);
        }
    }

    public void visitFrame(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitFrame(i, i2, objArr, i3, objArr2);
        }
    }

    public void visitIincInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitIincInsn(i, i2);
        }
    }

    public void visitInsn(int i) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitInsn(i);
        }
    }

    public AnnotationVisitor visitInsnAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f7107mv;
            if (methodVisitor != null) {
                return methodVisitor.visitInsnAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public void visitIntInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitIntInsn(i, i2);
        }
    }

    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitInvokeDynamicInsn(str, str2, handle, objArr);
        }
    }

    public void visitJumpInsn(int i, Label label) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitJumpInsn(i, label);
        }
    }

    public void visitLabel(Label label) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitLabel(label);
        }
    }

    public void visitLdcInsn(Object obj) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitLdcInsn(obj);
        }
    }

    public void visitLineNumber(int i, Label label) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitLineNumber(i, label);
        }
    }

    public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitLocalVariable(str, str2, str3, label, label2, i);
        }
    }

    public AnnotationVisitor visitLocalVariableAnnotation(int i, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f7107mv;
            if (methodVisitor != null) {
                return methodVisitor.visitLocalVariableAnnotation(i, typePath, labelArr, labelArr2, iArr, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitLookupSwitchInsn(label, iArr, labelArr);
        }
    }

    public void visitMaxs(int i, int i2) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitMaxs(i, i2);
        }
    }

    public void visitMethodInsn(int i, String str, String str2, String str3) {
        if (this.api >= 327680) {
            visitMethodInsn(i, str, str2, str3, i == 185);
            return;
        }
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitMethodInsn(i, str, str2, str3);
        }
    }

    public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
        if (this.api < 327680) {
            if (z != (i == 185)) {
                throw new IllegalArgumentException("INVOKESPECIAL/STATIC on interfaces require ASM 5");
            }
            visitMethodInsn(i, str, str2, str3);
            return;
        }
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitMethodInsn(i, str, str2, str3, z);
        }
    }

    public void visitMultiANewArrayInsn(String str, int i) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitMultiANewArrayInsn(str, i);
        }
    }

    public void visitParameter(String str, int i) {
        if (this.api < 327680) {
            throw new RuntimeException();
        }
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitParameter(str, i);
        }
    }

    public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            return methodVisitor.visitParameterAnnotation(i, str, z);
        }
        return null;
    }

    public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitTableSwitchInsn(i, i2, label, labelArr);
        }
    }

    public AnnotationVisitor visitTryCatchAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f7107mv;
            if (methodVisitor != null) {
                return methodVisitor.visitTryCatchAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitTryCatchBlock(label, label2, label3, str);
        }
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f7107mv;
            if (methodVisitor != null) {
                return methodVisitor.visitTypeAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public void visitTypeInsn(int i, String str) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitTypeInsn(i, str);
        }
    }

    public void visitVarInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f7107mv;
        if (methodVisitor != null) {
            methodVisitor.visitVarInsn(i, i2);
        }
    }
}
