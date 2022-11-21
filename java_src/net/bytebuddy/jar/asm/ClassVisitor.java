package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
public abstract class ClassVisitor {
    public final int api;

    /* renamed from: cv */
    public ClassVisitor f19177cv;

    public ClassVisitor(int i) {
        this(i, null);
    }

    public ClassVisitor(int i, ClassVisitor classVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.m14910a(this);
        }
        this.api = i;
        this.f19177cv = classVisitor;
    }

    public void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
        if (this.api < 524288 && (65536 & i2) != 0) {
            throw new UnsupportedOperationException("Records requires ASM8");
        }
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            classVisitor.visit(i, i2, str, str2, str3, strArr);
        }
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            return classVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            classVisitor.visitAttribute(attribute);
        }
    }

    public void visitEnd() {
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            classVisitor.visitEnd();
        }
    }

    public FieldVisitor visitField(int i, String str, String str2, String str3, Object obj) {
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            return classVisitor.visitField(i, str, str2, str3, obj);
        }
        return null;
    }

    public void visitInnerClass(String str, String str2, String str3, int i) {
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            classVisitor.visitInnerClass(str, str2, str3, i);
        }
    }

    public MethodVisitor visitMethod(int i, String str, String str2, String str3, String[] strArr) {
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            return classVisitor.visitMethod(i, str, str2, str3, strArr);
        }
        return null;
    }

    public ModuleVisitor visitModule(String str, int i, String str2) {
        if (this.api >= 393216) {
            ClassVisitor classVisitor = this.f19177cv;
            if (classVisitor != null) {
                return classVisitor.visitModule(str, i, str2);
            }
            return null;
        }
        throw new UnsupportedOperationException("Module requires ASM6");
    }

    public void visitNestHost(String str) {
        if (this.api >= 458752) {
            ClassVisitor classVisitor = this.f19177cv;
            if (classVisitor != null) {
                classVisitor.visitNestHost(str);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("NestHost requires ASM7");
    }

    public void visitNestMember(String str) {
        if (this.api >= 458752) {
            ClassVisitor classVisitor = this.f19177cv;
            if (classVisitor != null) {
                classVisitor.visitNestMember(str);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("NestMember requires ASM7");
    }

    public void visitOuterClass(String str, String str2, String str3) {
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            classVisitor.visitOuterClass(str, str2, str3);
        }
    }

    public void visitPermittedSubclass(String str) {
        if (this.api >= 589824) {
            ClassVisitor classVisitor = this.f19177cv;
            if (classVisitor != null) {
                classVisitor.visitPermittedSubclass(str);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("PermittedSubclasses requires ASM9");
    }

    public RecordComponentVisitor visitRecordComponent(String str, String str2, String str3) {
        if (this.api >= 524288) {
            ClassVisitor classVisitor = this.f19177cv;
            if (classVisitor != null) {
                return classVisitor.visitRecordComponent(str, str2, str3);
            }
            return null;
        }
        throw new UnsupportedOperationException("Record requires ASM8");
    }

    public void visitSource(String str, String str2) {
        ClassVisitor classVisitor = this.f19177cv;
        if (classVisitor != null) {
            classVisitor.visitSource(str, str2);
        }
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            ClassVisitor classVisitor = this.f19177cv;
            if (classVisitor != null) {
                return classVisitor.visitTypeAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new UnsupportedOperationException("TypeAnnotation requires ASM5");
    }
}
