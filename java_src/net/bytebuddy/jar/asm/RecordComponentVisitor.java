package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
public abstract class RecordComponentVisitor {

    /* renamed from: a */
    public RecordComponentVisitor f19223a;
    public final int api;

    public RecordComponentVisitor(int i) {
        this(i, null);
    }

    public RecordComponentVisitor getDelegate() {
        return this.f19223a;
    }

    public RecordComponentVisitor(int i, RecordComponentVisitor recordComponentVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.m14910a(this);
        }
        this.api = i;
        this.f19223a = recordComponentVisitor;
    }

    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        RecordComponentVisitor recordComponentVisitor = this.f19223a;
        if (recordComponentVisitor != null) {
            return recordComponentVisitor.visitAnnotation(str, z);
        }
        return null;
    }

    public void visitAttribute(Attribute attribute) {
        RecordComponentVisitor recordComponentVisitor = this.f19223a;
        if (recordComponentVisitor != null) {
            recordComponentVisitor.visitAttribute(attribute);
        }
    }

    public void visitEnd() {
        RecordComponentVisitor recordComponentVisitor = this.f19223a;
        if (recordComponentVisitor != null) {
            recordComponentVisitor.visitEnd();
        }
    }

    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        RecordComponentVisitor recordComponentVisitor = this.f19223a;
        if (recordComponentVisitor != null) {
            return recordComponentVisitor.visitTypeAnnotation(i, typePath, str, z);
        }
        return null;
    }
}
