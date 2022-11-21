package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
public abstract class MethodVisitor {
    private static final String REQUIRES_ASM5 = "This feature requires ASM5";
    public final int api;

    /* renamed from: mv */
    public MethodVisitor f19219mv;

    public MethodVisitor(int i) {
        this(i, null);
    }

    public AnnotationVisitor visitLocalVariableAnnotation(int i, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f19219mv;
            if (methodVisitor != null) {
                return methodVisitor.visitLocalVariableAnnotation(i, typePath, labelArr, labelArr2, iArr, str, z);
            }
            return null;
        }
        throw new UnsupportedOperationException(REQUIRES_ASM5);
    }

    @Deprecated
    public void visitMethodInsn(int i, String str, String str2, String str3) {
        visitMethodInsn(i | (this.api < 327680 ? 256 : 0), str, str2, str3, i == 185);
    }

    public MethodVisitor(int i, MethodVisitor methodVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.m14910a(this);
        }
        this.api = i;
        this.f19219mv = methodVisitor;
    }

    public void visitAnnotableParameterCount(int i, boolean z) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitAnnotableParameterCount(i, z);
        }
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            return methodVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public AnnotationVisitor visitAnnotationDefault() {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            return methodVisitor.visitAnnotationDefault();
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitAttribute(attribute);
        }
    }

    public void visitCode() {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitCode();
        }
    }

    public void visitEnd() {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitEnd();
        }
    }

    public void visitFieldInsn(int i, String str, String str2, String str3) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitFieldInsn(i, str, str2, str3);
        }
    }

    public void visitFrame(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitFrame(i, i2, objArr, i3, objArr2);
        }
    }

    public void visitIincInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitIincInsn(i, i2);
        }
    }

    public void visitInsn(int i) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitInsn(i);
        }
    }

    public AnnotationVisitor visitInsnAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f19219mv;
            if (methodVisitor != null) {
                return methodVisitor.visitInsnAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new UnsupportedOperationException(REQUIRES_ASM5);
    }

    public void visitIntInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitIntInsn(i, i2);
        }
    }

    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f19219mv;
            if (methodVisitor != null) {
                methodVisitor.visitInvokeDynamicInsn(str, str2, handle, objArr);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException(REQUIRES_ASM5);
    }

    public void visitJumpInsn(int i, Label label) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitJumpInsn(i, label);
        }
    }

    public void visitLabel(Label label) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitLabel(label);
        }
    }

    public void visitLdcInsn(Object obj) {
        if (this.api < 327680 && ((obj instanceof Handle) || ((obj instanceof Type) && ((Type) obj).getSort() == 11))) {
            throw new UnsupportedOperationException(REQUIRES_ASM5);
        }
        if (this.api < 458752 && (obj instanceof ConstantDynamic)) {
            throw new UnsupportedOperationException("This feature requires ASM7");
        }
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitLdcInsn(obj);
        }
    }

    public void visitLineNumber(int i, Label label) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitLineNumber(i, label);
        }
    }

    public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitLocalVariable(str, str2, str3, label, label2, i);
        }
    }

    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitLookupSwitchInsn(label, iArr, labelArr);
        }
    }

    public void visitMaxs(int i, int i2) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitMaxs(i, i2);
        }
    }

    public void visitMultiANewArrayInsn(String str, int i) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitMultiANewArrayInsn(str, i);
        }
    }

    public void visitParameter(String str, int i) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f19219mv;
            if (methodVisitor != null) {
                methodVisitor.visitParameter(str, i);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException(REQUIRES_ASM5);
    }

    public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            return methodVisitor.visitParameterAnnotation(i, str, z);
        }
        return null;
    }

    public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitTableSwitchInsn(i, i2, label, labelArr);
        }
    }

    public AnnotationVisitor visitTryCatchAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f19219mv;
            if (methodVisitor != null) {
                return methodVisitor.visitTryCatchAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new UnsupportedOperationException(REQUIRES_ASM5);
    }

    public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitTryCatchBlock(label, label2, label3, str);
        }
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            MethodVisitor methodVisitor = this.f19219mv;
            if (methodVisitor != null) {
                return methodVisitor.visitTypeAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new UnsupportedOperationException(REQUIRES_ASM5);
    }

    public void visitTypeInsn(int i, String str) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitTypeInsn(i, str);
        }
    }

    public void visitVarInsn(int i, int i2) {
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitVarInsn(i, i2);
        }
    }

    public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
        if (this.api < 327680 && (i & 256) == 0) {
            if (z == (i == 185)) {
                visitMethodInsn(i, str, str2, str3);
                return;
            }
            throw new UnsupportedOperationException("INVOKESPECIAL/STATIC on interfaces requires ASM5");
        }
        MethodVisitor methodVisitor = this.f19219mv;
        if (methodVisitor != null) {
            methodVisitor.visitMethodInsn(i & (-257), str, str2, str3, z);
        }
    }
}
