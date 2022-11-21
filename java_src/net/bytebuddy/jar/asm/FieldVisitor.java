package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
public abstract class FieldVisitor {
    public final int api;

    /* renamed from: fv */
    public FieldVisitor f19200fv;

    public FieldVisitor(int i) {
        this(i, null);
    }

    public FieldVisitor(int i, FieldVisitor fieldVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.m14910a(this);
        }
        this.api = i;
        this.f19200fv = fieldVisitor;
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        FieldVisitor fieldVisitor = this.f19200fv;
        if (fieldVisitor != null) {
            return fieldVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        FieldVisitor fieldVisitor = this.f19200fv;
        if (fieldVisitor != null) {
            fieldVisitor.visitAttribute(attribute);
        }
    }

    public void visitEnd() {
        FieldVisitor fieldVisitor = this.f19200fv;
        if (fieldVisitor != null) {
            fieldVisitor.visitEnd();
        }
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        if (this.api >= 327680) {
            FieldVisitor fieldVisitor = this.f19200fv;
            if (fieldVisitor != null) {
                return fieldVisitor.visitTypeAnnotation(i, typePath, str, z);
            }
            return null;
        }
        throw new UnsupportedOperationException("This feature requires ASM5");
    }
}
