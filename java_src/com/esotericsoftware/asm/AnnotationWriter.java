package com.esotericsoftware.asm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AnnotationWriter extends AnnotationVisitor {

    /* renamed from: a */
    public final ClassWriter f6975a;

    /* renamed from: b */
    public int f6976b;

    /* renamed from: c */
    public final boolean f6977c;

    /* renamed from: d */
    public final ByteVector f6978d;

    /* renamed from: e */
    public final ByteVector f6979e;

    /* renamed from: f */
    public final int f6980f;

    /* renamed from: g */
    public AnnotationWriter f6981g;

    /* renamed from: h */
    public AnnotationWriter f6982h;

    public AnnotationWriter(ClassWriter classWriter, boolean z, ByteVector byteVector, ByteVector byteVector2, int i) {
        super(327680);
        this.f6975a = classWriter;
        this.f6977c = z;
        this.f6978d = byteVector;
        this.f6979e = byteVector2;
        this.f6980f = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m23430b(int r3, com.esotericsoftware.asm.TypePath r4, com.esotericsoftware.asm.ByteVector r5) {
        /*
            int r0 = r3 >>> 24
            r1 = 1
            if (r0 == 0) goto L1f
            if (r0 == r1) goto L1f
            switch(r0) {
                case 19: goto L1b;
                case 20: goto L1b;
                case 21: goto L1b;
                case 22: goto L1f;
                default: goto La;
            }
        La:
            switch(r0) {
                case 71: goto L17;
                case 72: goto L17;
                case 73: goto L17;
                case 74: goto L17;
                case 75: goto L17;
                default: goto Ld;
            }
        Ld:
            r2 = 16776960(0xffff00, float:2.3509528E-38)
            r3 = r3 & r2
            int r3 = r3 >> 8
            r5.m23422c(r0, r3)
            goto L24
        L17:
            r5.putInt(r3)
            goto L24
        L1b:
            r5.putByte(r0)
            goto L24
        L1f:
            int r3 = r3 >>> 16
            r5.putShort(r3)
        L24:
            if (r4 != 0) goto L2b
            r3 = 0
            r5.putByte(r3)
            goto L37
        L2b:
            byte[] r3 = r4.f7163a
            int r4 = r4.f7164b
            r0 = r3[r4]
            int r0 = r0 * 2
            int r0 = r0 + r1
            r5.putByteArray(r3, r4, r0)
        L37:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.AnnotationWriter.m23430b(int, com.esotericsoftware.asm.TypePath, com.esotericsoftware.asm.ByteVector):void");
    }

    /* renamed from: d */
    public static void m23428d(AnnotationWriter[] annotationWriterArr, int i, ByteVector byteVector) {
        int length = ((annotationWriterArr.length - i) * 2) + 1;
        int i2 = i;
        while (true) {
            int i3 = 0;
            if (i2 >= annotationWriterArr.length) {
                break;
            }
            AnnotationWriter annotationWriter = annotationWriterArr[i2];
            if (annotationWriter != null) {
                i3 = annotationWriter.m23431a();
            }
            length += i3;
            i2++;
        }
        byteVector.putInt(length).putByte(annotationWriterArr.length - i);
        while (i < annotationWriterArr.length) {
            AnnotationWriter annotationWriter2 = null;
            int i4 = 0;
            for (AnnotationWriter annotationWriter3 = annotationWriterArr[i]; annotationWriter3 != null; annotationWriter3 = annotationWriter3.f6981g) {
                i4++;
                annotationWriter3.visitEnd();
                annotationWriter3.f6982h = annotationWriter2;
                annotationWriter2 = annotationWriter3;
            }
            byteVector.putShort(i4);
            while (annotationWriter2 != null) {
                ByteVector byteVector2 = annotationWriter2.f6978d;
                byteVector.putByteArray(byteVector2.f6985a, 0, byteVector2.f6986b);
                annotationWriter2 = annotationWriter2.f6982h;
            }
            i++;
        }
    }

    /* renamed from: a */
    public int m23431a() {
        int i = 0;
        for (AnnotationWriter annotationWriter = this; annotationWriter != null; annotationWriter = annotationWriter.f6981g) {
            i += annotationWriter.f6978d.f6986b;
        }
        return i;
    }

    /* renamed from: c */
    public void m23429c(ByteVector byteVector) {
        int i = 2;
        int i2 = 0;
        AnnotationWriter annotationWriter = null;
        for (AnnotationWriter annotationWriter2 = this; annotationWriter2 != null; annotationWriter2 = annotationWriter2.f6981g) {
            i2++;
            i += annotationWriter2.f6978d.f6986b;
            annotationWriter2.visitEnd();
            annotationWriter2.f6982h = annotationWriter;
            annotationWriter = annotationWriter2;
        }
        byteVector.putInt(i);
        byteVector.putShort(i2);
        while (annotationWriter != null) {
            ByteVector byteVector2 = annotationWriter.f6978d;
            byteVector.putByteArray(byteVector2.f6985a, 0, byteVector2.f6986b);
            annotationWriter = annotationWriter.f6982h;
        }
    }

    @Override // com.esotericsoftware.asm.AnnotationVisitor
    public void visit(String str, Object obj) {
        int i;
        ByteVector byteVector;
        ClassWriter classWriter;
        String descriptor;
        int i2;
        this.f6976b++;
        if (this.f6977c) {
            this.f6978d.putShort(this.f6975a.newUTF8(str));
        }
        if (obj instanceof String) {
            byteVector = this.f6978d;
            i = 115;
            classWriter = this.f6975a;
            descriptor = (String) obj;
        } else {
            i = 66;
            if (obj instanceof Byte) {
                byteVector = this.f6978d;
                i2 = this.f6975a.m23398f(((Byte) obj).byteValue()).f7087a;
                byteVector.m23422c(i, i2);
            } else if (obj instanceof Boolean) {
                this.f6978d.m23422c(90, this.f6975a.m23398f(((Boolean) obj).booleanValue() ? 1 : 0).f7087a);
                return;
            } else if (obj instanceof Character) {
                this.f6978d.m23422c(67, this.f6975a.m23398f(((Character) obj).charValue()).f7087a);
                return;
            } else if (obj instanceof Short) {
                this.f6978d.m23422c(83, this.f6975a.m23398f(((Short) obj).shortValue()).f7087a);
                return;
            } else if (!(obj instanceof Type)) {
                int i3 = 0;
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    this.f6978d.m23422c(91, bArr.length);
                    while (i3 < bArr.length) {
                        this.f6978d.m23422c(66, this.f6975a.m23398f(bArr[i3]).f7087a);
                        i3++;
                    }
                    return;
                } else if (obj instanceof boolean[]) {
                    boolean[] zArr = (boolean[]) obj;
                    this.f6978d.m23422c(91, zArr.length);
                    while (i3 < zArr.length) {
                        this.f6978d.m23422c(90, this.f6975a.m23398f(zArr[i3] ? 1 : 0).f7087a);
                        i3++;
                    }
                    return;
                } else if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    this.f6978d.m23422c(91, sArr.length);
                    while (i3 < sArr.length) {
                        this.f6978d.m23422c(83, this.f6975a.m23398f(sArr[i3]).f7087a);
                        i3++;
                    }
                    return;
                } else if (obj instanceof char[]) {
                    char[] cArr = (char[]) obj;
                    this.f6978d.m23422c(91, cArr.length);
                    while (i3 < cArr.length) {
                        this.f6978d.m23422c(67, this.f6975a.m23398f(cArr[i3]).f7087a);
                        i3++;
                    }
                    return;
                } else if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    this.f6978d.m23422c(91, iArr.length);
                    while (i3 < iArr.length) {
                        this.f6978d.m23422c(73, this.f6975a.m23398f(iArr[i3]).f7087a);
                        i3++;
                    }
                    return;
                } else if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    this.f6978d.m23422c(91, jArr.length);
                    while (i3 < jArr.length) {
                        this.f6978d.m23422c(74, this.f6975a.m23396h(jArr[i3]).f7087a);
                        i3++;
                    }
                    return;
                } else if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    this.f6978d.m23422c(91, fArr.length);
                    while (i3 < fArr.length) {
                        this.f6978d.m23422c(70, this.f6975a.m23399e(fArr[i3]).f7087a);
                        i3++;
                    }
                    return;
                } else if (!(obj instanceof double[])) {
                    Item m23394j = this.f6975a.m23394j(obj);
                    this.f6978d.m23422c(".s.IFJDCS".charAt(m23394j.f7088b), m23394j.f7087a);
                    return;
                } else {
                    double[] dArr = (double[]) obj;
                    this.f6978d.m23422c(91, dArr.length);
                    while (i3 < dArr.length) {
                        this.f6978d.m23422c(68, this.f6975a.m23400d(dArr[i3]).f7087a);
                        i3++;
                    }
                    return;
                }
            } else {
                byteVector = this.f6978d;
                i = 99;
                classWriter = this.f6975a;
                descriptor = ((Type) obj).getDescriptor();
            }
        }
        i2 = classWriter.newUTF8(descriptor);
        byteVector.m23422c(i, i2);
    }

    @Override // com.esotericsoftware.asm.AnnotationVisitor
    public AnnotationVisitor visitAnnotation(String str, String str2) {
        this.f6976b++;
        if (this.f6977c) {
            this.f6978d.putShort(this.f6975a.newUTF8(str));
        }
        this.f6978d.m23422c(64, this.f6975a.newUTF8(str2)).putShort(0);
        ClassWriter classWriter = this.f6975a;
        ByteVector byteVector = this.f6978d;
        return new AnnotationWriter(classWriter, true, byteVector, byteVector, byteVector.f6986b - 2);
    }

    @Override // com.esotericsoftware.asm.AnnotationVisitor
    public AnnotationVisitor visitArray(String str) {
        this.f6976b++;
        if (this.f6977c) {
            this.f6978d.putShort(this.f6975a.newUTF8(str));
        }
        this.f6978d.m23422c(91, 0);
        ClassWriter classWriter = this.f6975a;
        ByteVector byteVector = this.f6978d;
        return new AnnotationWriter(classWriter, false, byteVector, byteVector, byteVector.f6986b - 2);
    }

    @Override // com.esotericsoftware.asm.AnnotationVisitor
    public void visitEnd() {
        ByteVector byteVector = this.f6979e;
        if (byteVector != null) {
            byte[] bArr = byteVector.f6985a;
            int i = this.f6980f;
            int i2 = this.f6976b;
            bArr[i] = (byte) (i2 >>> 8);
            bArr[i + 1] = (byte) i2;
        }
    }

    @Override // com.esotericsoftware.asm.AnnotationVisitor
    public void visitEnum(String str, String str2, String str3) {
        this.f6976b++;
        if (this.f6977c) {
            this.f6978d.putShort(this.f6975a.newUTF8(str));
        }
        this.f6978d.m23422c(101, this.f6975a.newUTF8(str2)).putShort(this.f6975a.newUTF8(str3));
    }
}
