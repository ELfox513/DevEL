package com.esotericsoftware.asm;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class FieldWriter extends FieldVisitor {

    /* renamed from: a */
    public final ClassWriter f7056a;

    /* renamed from: b */
    public final int f7057b;

    /* renamed from: c */
    public final int f7058c;

    /* renamed from: d */
    public final int f7059d;

    /* renamed from: e */
    public int f7060e;

    /* renamed from: f */
    public int f7061f;

    /* renamed from: g */
    public AnnotationWriter f7062g;

    /* renamed from: h */
    public AnnotationWriter f7063h;

    /* renamed from: i */
    public AnnotationWriter f7064i;

    /* renamed from: j */
    public AnnotationWriter f7065j;

    /* renamed from: k */
    public Attribute f7066k;

    public FieldWriter(ClassWriter classWriter, int i, String str, String str2, String str3, Object obj) {
        super(327680);
        if (classWriter.f6999G == null) {
            classWriter.f6999G = this;
        } else {
            classWriter.f7000H.f7055fv = this;
        }
        classWriter.f7000H = this;
        this.f7056a = classWriter;
        this.f7057b = i;
        this.f7058c = classWriter.newUTF8(str);
        this.f7059d = classWriter.newUTF8(str2);
        if (str3 != null) {
            this.f7060e = classWriter.newUTF8(str3);
        }
        if (obj != null) {
            this.f7061f = classWriter.m23394j(obj).f7087a;
        }
    }

    /* renamed from: a */
    public int m23381a() {
        int i;
        if (this.f7061f != 0) {
            this.f7056a.newUTF8("ConstantValue");
            i = 16;
        } else {
            i = 8;
        }
        int i2 = this.f7057b;
        if ((i2 & 4096) != 0) {
            ClassWriter classWriter = this.f7056a;
            if ((classWriter.f7007b & MeshBuilder.MAX_INDEX) < 49 || (i2 & 262144) != 0) {
                classWriter.newUTF8("Synthetic");
                i += 6;
            }
        }
        if ((this.f7057b & 131072) != 0) {
            this.f7056a.newUTF8("Deprecated");
            i += 6;
        }
        if (this.f7060e != 0) {
            this.f7056a.newUTF8("Signature");
            i += 8;
        }
        if (this.f7062g != null) {
            this.f7056a.newUTF8("RuntimeVisibleAnnotations");
            i += this.f7062g.m23431a() + 8;
        }
        if (this.f7063h != null) {
            this.f7056a.newUTF8("RuntimeInvisibleAnnotations");
            i += this.f7063h.m23431a() + 8;
        }
        if (this.f7064i != null) {
            this.f7056a.newUTF8("RuntimeVisibleTypeAnnotations");
            i += this.f7064i.m23431a() + 8;
        }
        if (this.f7065j != null) {
            this.f7056a.newUTF8("RuntimeInvisibleTypeAnnotations");
            i += this.f7065j.m23431a() + 8;
        }
        Attribute attribute = this.f7066k;
        return attribute != null ? i + attribute.m23426b(this.f7056a, null, 0, -1, -1) : i;
    }

    /* renamed from: b */
    public void m23380b(ByteVector byteVector) {
        int i = this.f7057b;
        byteVector.putShort(i & ((((i & 262144) / 64) | net.bytebuddy.jar.asm.Opcodes.ASM6) ^ (-1))).putShort(this.f7058c).putShort(this.f7059d);
        int i2 = this.f7061f != 0 ? 1 : 0;
        int i3 = this.f7057b;
        if ((i3 & 4096) != 0 && ((this.f7056a.f7007b & MeshBuilder.MAX_INDEX) < 49 || (i3 & 262144) != 0)) {
            i2++;
        }
        if ((i3 & 131072) != 0) {
            i2++;
        }
        if (this.f7060e != 0) {
            i2++;
        }
        if (this.f7062g != null) {
            i2++;
        }
        if (this.f7063h != null) {
            i2++;
        }
        if (this.f7064i != null) {
            i2++;
        }
        if (this.f7065j != null) {
            i2++;
        }
        Attribute attribute = this.f7066k;
        if (attribute != null) {
            i2 += attribute.m23427a();
        }
        byteVector.putShort(i2);
        if (this.f7061f != 0) {
            byteVector.putShort(this.f7056a.newUTF8("ConstantValue"));
            byteVector.putInt(2).putShort(this.f7061f);
        }
        int i4 = this.f7057b;
        if ((i4 & 4096) != 0) {
            ClassWriter classWriter = this.f7056a;
            if ((65535 & classWriter.f7007b) < 49 || (i4 & 262144) != 0) {
                byteVector.putShort(classWriter.newUTF8("Synthetic")).putInt(0);
            }
        }
        if ((this.f7057b & 131072) != 0) {
            byteVector.putShort(this.f7056a.newUTF8("Deprecated")).putInt(0);
        }
        if (this.f7060e != 0) {
            byteVector.putShort(this.f7056a.newUTF8("Signature"));
            byteVector.putInt(2).putShort(this.f7060e);
        }
        if (this.f7062g != null) {
            byteVector.putShort(this.f7056a.newUTF8("RuntimeVisibleAnnotations"));
            this.f7062g.m23429c(byteVector);
        }
        if (this.f7063h != null) {
            byteVector.putShort(this.f7056a.newUTF8("RuntimeInvisibleAnnotations"));
            this.f7063h.m23429c(byteVector);
        }
        if (this.f7064i != null) {
            byteVector.putShort(this.f7056a.newUTF8("RuntimeVisibleTypeAnnotations"));
            this.f7064i.m23429c(byteVector);
        }
        if (this.f7065j != null) {
            byteVector.putShort(this.f7056a.newUTF8("RuntimeInvisibleTypeAnnotations"));
            this.f7065j.m23429c(byteVector);
        }
        Attribute attribute2 = this.f7066k;
        if (attribute2 != null) {
            attribute2.m23425c(this.f7056a, null, 0, -1, -1, byteVector);
        }
    }

    @Override // com.esotericsoftware.asm.FieldVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        byteVector.putShort(this.f7056a.newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this.f7056a, true, byteVector, byteVector, 2);
        if (z) {
            annotationWriter.f6981g = this.f7062g;
            this.f7062g = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f7063h;
            this.f7063h = annotationWriter;
        }
        return annotationWriter;
    }

    @Override // com.esotericsoftware.asm.FieldVisitor
    public void visitAttribute(Attribute attribute) {
        attribute.f6984b = this.f7066k;
        this.f7066k = attribute;
    }

    @Override // com.esotericsoftware.asm.FieldVisitor
    public void visitEnd() {
    }

    @Override // com.esotericsoftware.asm.FieldVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        AnnotationWriter.m23430b(i, typePath, byteVector);
        byteVector.putShort(this.f7056a.newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this.f7056a, true, byteVector, byteVector, byteVector.f6986b - 2);
        if (z) {
            annotationWriter.f6981g = this.f7064i;
            this.f7064i = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f7065j;
            this.f7065j = annotationWriter;
        }
        return annotationWriter;
    }
}
