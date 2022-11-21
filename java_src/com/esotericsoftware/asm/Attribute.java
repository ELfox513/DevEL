package com.esotericsoftware.asm;
/* loaded from: classes.dex */
public class Attribute {

    /* renamed from: a */
    public byte[] f6983a;

    /* renamed from: b */
    public Attribute f6984b;
    public final String type;

    public Attribute(String str) {
        this.type = str;
    }

    /* renamed from: a */
    public final int m23427a() {
        int i = 0;
        for (Attribute attribute = this; attribute != null; attribute = attribute.f6984b) {
            i++;
        }
        return i;
    }

    /* renamed from: b */
    public final int m23426b(ClassWriter classWriter, byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        for (Attribute attribute = this; attribute != null; attribute = attribute.f6984b) {
            classWriter.newUTF8(attribute.type);
            i4 += attribute.write(classWriter, bArr, i, i2, i3).f6986b + 6;
        }
        return i4;
    }

    /* renamed from: c */
    public final void m23425c(ClassWriter classWriter, byte[] bArr, int i, int i2, int i3, ByteVector byteVector) {
        for (Attribute attribute = this; attribute != null; attribute = attribute.f6984b) {
            ByteVector write = attribute.write(classWriter, bArr, i, i2, i3);
            byteVector.putShort(classWriter.newUTF8(attribute.type)).putInt(write.f6986b);
            byteVector.putByteArray(write.f6985a, 0, write.f6986b);
        }
    }

    public Label[] getLabels() {
        return null;
    }

    public boolean isCodeAttribute() {
        return false;
    }

    public boolean isUnknown() {
        return true;
    }

    public Attribute read(ClassReader classReader, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
        Attribute attribute = new Attribute(this.type);
        byte[] bArr = new byte[i2];
        attribute.f6983a = bArr;
        System.arraycopy(classReader.f6988b, i, bArr, 0, i2);
        return attribute;
    }

    public ByteVector write(ClassWriter classWriter, byte[] bArr, int i, int i2, int i3) {
        ByteVector byteVector = new ByteVector();
        byte[] bArr2 = this.f6983a;
        byteVector.f6985a = bArr2;
        byteVector.f6986b = bArr2.length;
        return byteVector;
    }
}
