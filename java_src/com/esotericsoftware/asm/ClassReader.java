package com.esotericsoftware.asm;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.InputStream;
import net.bytebuddy.description.method.MethodDescription;
/* loaded from: classes.dex */
public class ClassReader {
    public static final int EXPAND_FRAMES = 8;
    public static final int SKIP_CODE = 1;
    public static final int SKIP_DEBUG = 2;
    public static final int SKIP_FRAMES = 4;

    /* renamed from: a */
    public final int[] f6987a;

    /* renamed from: b */
    public final byte[] f6988b;

    /* renamed from: c */
    public final String[] f6989c;

    /* renamed from: d */
    public final int f6990d;
    public final int header;

    public ClassReader(InputStream inputStream) {
        this(m23407n(inputStream, false));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ClassReader(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            r1 = 46
            r2 = 47
            java.lang.String r4 = r4.replace(r1, r2)
            r0.append(r4)
            java.lang.String r4 = ".class"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            java.io.InputStream r4 = java.lang.ClassLoader.getSystemResourceAsStream(r4)
            r0 = 1
            byte[] r4 = m23407n(r4, r0)
            r3.<init>(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.ClassReader.<init>(java.lang.String):void");
    }

    public ClassReader(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public ClassReader(byte[] bArr, int i, int i2) {
        this.f6988b = bArr;
        if (readShort(i + 6) > 52) {
            throw new IllegalArgumentException();
        }
        int[] iArr = new int[readUnsignedShort(i + 8)];
        this.f6987a = iArr;
        int length = iArr.length;
        this.f6989c = new String[length];
        int i3 = 0;
        int i4 = i + 10;
        int i5 = 1;
        while (i5 < length) {
            int i6 = i4 + 1;
            this.f6987a[i5] = i6;
            byte b = bArr[i4];
            int i7 = 5;
            if (b == 1) {
                i7 = readUnsignedShort(i6) + 3;
                if (i7 > i3) {
                    i3 = i7;
                }
            } else if (b == 15) {
                i7 = 4;
            } else if (b != 18 && b != 3 && b != 4) {
                if (b == 5 || b == 6) {
                    i7 = 9;
                    i5++;
                } else {
                    switch (b) {
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                            break;
                        default:
                            i7 = 3;
                            continue;
                    }
                }
            }
            i4 += i7;
            i5++;
        }
        this.f6990d = i3;
        this.header = i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        if (r2 >= r0.length) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
        r3 = new byte[r2];
        java.lang.System.arraycopy(r0, 0, r3, 0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        r0 = r3;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m23407n(java.io.InputStream r5, boolean r6) {
        /*
            if (r5 == 0) goto L49
            int r0 = r5.available()     // Catch: java.lang.Throwable -> L42
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L42
            r1 = 0
            r2 = 0
        La:
            int r3 = r0.length     // Catch: java.lang.Throwable -> L42
            int r3 = r3 - r2
            int r3 = r5.read(r0, r2, r3)     // Catch: java.lang.Throwable -> L42
            r4 = -1
            if (r3 != r4) goto L22
            int r3 = r0.length     // Catch: java.lang.Throwable -> L42
            if (r2 >= r3) goto L1c
            byte[] r3 = new byte[r2]     // Catch: java.lang.Throwable -> L42
            java.lang.System.arraycopy(r0, r1, r3, r1, r2)     // Catch: java.lang.Throwable -> L42
            r0 = r3
        L1c:
            if (r6 == 0) goto L21
            r5.close()
        L21:
            return r0
        L22:
            int r2 = r2 + r3
            int r3 = r0.length     // Catch: java.lang.Throwable -> L42
            if (r2 != r3) goto La
            int r3 = r5.read()     // Catch: java.lang.Throwable -> L42
            if (r3 >= 0) goto L32
            if (r6 == 0) goto L31
            r5.close()
        L31:
            return r0
        L32:
            int r4 = r0.length     // Catch: java.lang.Throwable -> L42
            int r4 = r4 + 1000
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L42
            java.lang.System.arraycopy(r0, r1, r4, r1, r2)     // Catch: java.lang.Throwable -> L42
            int r0 = r2 + 1
            byte r3 = (byte) r3     // Catch: java.lang.Throwable -> L42
            r4[r2] = r3     // Catch: java.lang.Throwable -> L42
            r2 = r0
            r0 = r4
            goto La
        L42:
            r0 = move-exception
            if (r6 == 0) goto L48
            r5.close()
        L48:
            throw r0
        L49:
            java.io.IOException r5 = new java.io.IOException
            java.lang.String r6 = "Class not found"
            r5.<init>(r6)
            goto L52
        L51:
            throw r5
        L52:
            goto L51
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.ClassReader.m23407n(java.io.InputStream, boolean):byte[]");
    }

    /* renamed from: a */
    public final int m23420a() {
        int i = this.header;
        int readUnsignedShort = i + 8 + (readUnsignedShort(i + 6) * 2);
        for (int readUnsignedShort2 = readUnsignedShort(readUnsignedShort); readUnsignedShort2 > 0; readUnsignedShort2--) {
            for (int readUnsignedShort3 = readUnsignedShort(readUnsignedShort + 8); readUnsignedShort3 > 0; readUnsignedShort3--) {
                readUnsignedShort += readInt(readUnsignedShort + 12) + 6;
            }
            readUnsignedShort += 8;
        }
        int i2 = readUnsignedShort + 2;
        for (int readUnsignedShort4 = readUnsignedShort(i2); readUnsignedShort4 > 0; readUnsignedShort4--) {
            for (int readUnsignedShort5 = readUnsignedShort(i2 + 8); readUnsignedShort5 > 0; readUnsignedShort5--) {
                i2 += readInt(i2 + 12) + 6;
            }
            i2 += 8;
        }
        return i2 + 2;
    }

    public void accept(ClassVisitor classVisitor, int i) {
        accept(classVisitor, new Attribute[0], i);
    }

    public void accept(ClassVisitor classVisitor, Attribute[] attributeArr, int i) {
        int i2;
        String str;
        String str2;
        String[] strArr;
        String str3;
        Attribute attribute;
        int i3;
        int i4 = this.header;
        char[] cArr = new char[this.f6990d];
        Context context = new Context();
        context.f7032a = attributeArr;
        context.f7033b = i;
        context.f7034c = cArr;
        int readUnsignedShort = readUnsignedShort(i4);
        String readClass = readClass(i4 + 2, cArr);
        String readClass2 = readClass(i4 + 4, cArr);
        int readUnsignedShort2 = readUnsignedShort(i4 + 6);
        String[] strArr2 = new String[readUnsignedShort2];
        int i5 = i4 + 8;
        for (int i6 = 0; i6 < readUnsignedShort2; i6++) {
            strArr2[i6] = readClass(i5, cArr);
            i5 += 2;
        }
        int m23420a = m23420a();
        int i7 = m23420a;
        int i8 = readUnsignedShort;
        int readUnsignedShort3 = readUnsignedShort(m23420a);
        int i9 = 0;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        Attribute attribute2 = null;
        while (readUnsignedShort3 > 0) {
            String readUTF8 = readUTF8(i7 + 2, cArr);
            if ("SourceFile".equals(readUTF8)) {
                str6 = readUTF8(i7 + 8, cArr);
            } else if ("InnerClasses".equals(readUTF8)) {
                i13 = i7 + 8;
            } else if ("EnclosingMethod".equals(readUTF8)) {
                String readClass3 = readClass(i7 + 8, cArr);
                int readUnsignedShort4 = readUnsignedShort(i7 + 10);
                if (readUnsignedShort4 != 0) {
                    str9 = readUTF8(this.f6987a[readUnsignedShort4], cArr);
                    str4 = readUTF8(this.f6987a[readUnsignedShort4] + 2, cArr);
                }
                str8 = readClass3;
            } else if ("Signature".equals(readUTF8)) {
                str7 = readUTF8(i7 + 8, cArr);
            } else if ("RuntimeVisibleAnnotations".equals(readUTF8)) {
                i9 = i7 + 8;
            } else if ("RuntimeVisibleTypeAnnotations".equals(readUTF8)) {
                i11 = i7 + 8;
            } else {
                if ("Deprecated".equals(readUTF8)) {
                    i3 = 131072;
                } else if ("Synthetic".equals(readUTF8)) {
                    i3 = 266240;
                } else if ("SourceDebugExtension".equals(readUTF8)) {
                    int readInt = readInt(i7 + 4);
                    str5 = m23412i(i7 + 8, readInt, new char[readInt]);
                } else if ("RuntimeInvisibleAnnotations".equals(readUTF8)) {
                    i10 = i7 + 8;
                } else if ("RuntimeInvisibleTypeAnnotations".equals(readUTF8)) {
                    i12 = i7 + 8;
                } else {
                    if ("BootstrapMethods".equals(readUTF8)) {
                        int readUnsignedShort5 = readUnsignedShort(i7 + 8);
                        int[] iArr = new int[readUnsignedShort5];
                        int i14 = i7 + 10;
                        int i15 = 0;
                        while (i15 < readUnsignedShort5) {
                            iArr[i15] = i14;
                            i14 += (readUnsignedShort(i14 + 2) + 2) << 1;
                            i15++;
                            i9 = i9;
                        }
                        context.f7035d = iArr;
                        str = str4;
                        str2 = str5;
                        str3 = str6;
                        strArr = strArr2;
                        attribute = attribute2;
                        i2 = i9;
                    } else {
                        i2 = i9;
                        str = str4;
                        str2 = str5;
                        strArr = strArr2;
                        str3 = str6;
                        Attribute m23413h = m23413h(attributeArr, readUTF8, i7 + 8, readInt(i7 + 4), cArr, -1, null);
                        attribute = attribute2;
                        if (m23413h != null) {
                            m23413h.f6984b = attribute;
                            attribute2 = m23413h;
                            str6 = str3;
                            i9 = i2;
                            str4 = str;
                            str5 = str2;
                            i7 += readInt(i7 + 4) + 6;
                            readUnsignedShort3--;
                            strArr2 = strArr;
                        }
                    }
                    attribute2 = attribute;
                    str6 = str3;
                    i9 = i2;
                    str4 = str;
                    str5 = str2;
                    i7 += readInt(i7 + 4) + 6;
                    readUnsignedShort3--;
                    strArr2 = strArr;
                }
                i8 |= i3;
            }
            strArr = strArr2;
            i7 += readInt(i7 + 4) + 6;
            readUnsignedShort3--;
            strArr2 = strArr;
        }
        int i16 = i9;
        String str10 = str4;
        String str11 = str5;
        String str12 = str6;
        Attribute attribute3 = attribute2;
        classVisitor.visit(readInt(this.f6987a[1] - 7), i8, readClass, str7, readClass2, strArr2);
        if ((i & 2) == 0 && (str12 != null || str11 != null)) {
            classVisitor.visitSource(str12, str11);
        }
        String str13 = str8;
        if (str13 != null) {
            classVisitor.visitOuterClass(str13, str9, str10);
        }
        if (i16 != 0) {
            int i17 = i16 + 2;
            for (int readUnsignedShort6 = readUnsignedShort(i16); readUnsignedShort6 > 0; readUnsignedShort6--) {
                i17 = m23417d(i17 + 2, cArr, true, classVisitor.visitAnnotation(readUTF8(i17, cArr), true));
            }
        }
        int i18 = i10;
        if (i18 != 0) {
            int i19 = i18 + 2;
            for (int readUnsignedShort7 = readUnsignedShort(i18); readUnsignedShort7 > 0; readUnsignedShort7--) {
                i19 = m23417d(i19 + 2, cArr, true, classVisitor.visitAnnotation(readUTF8(i19, cArr), false));
            }
        }
        int i20 = i11;
        if (i20 != 0) {
            int i21 = i20 + 2;
            for (int readUnsignedShort8 = readUnsignedShort(i20); readUnsignedShort8 > 0; readUnsignedShort8--) {
                int m23415f = m23415f(context, i21);
                i21 = m23417d(m23415f + 2, cArr, true, classVisitor.visitTypeAnnotation(context.f7040i, context.f7041j, readUTF8(m23415f, cArr), true));
            }
        }
        int i22 = i12;
        if (i22 != 0) {
            int i23 = i22 + 2;
            for (int readUnsignedShort9 = readUnsignedShort(i22); readUnsignedShort9 > 0; readUnsignedShort9--) {
                int m23415f2 = m23415f(context, i23);
                i23 = m23417d(m23415f2 + 2, cArr, true, classVisitor.visitTypeAnnotation(context.f7040i, context.f7041j, readUTF8(m23415f2, cArr), false));
            }
        }
        while (attribute3 != null) {
            Attribute attribute4 = attribute3.f6984b;
            attribute3.f6984b = null;
            classVisitor.visitAttribute(attribute3);
            attribute3 = attribute4;
        }
        int i24 = i13;
        if (i24 != 0) {
            int i25 = i24 + 2;
            for (int readUnsignedShort10 = readUnsignedShort(i24); readUnsignedShort10 > 0; readUnsignedShort10--) {
                classVisitor.visitInnerClass(readClass(i25, cArr), readClass(i25 + 2, cArr), readUTF8(i25 + 4, cArr), readUnsignedShort(i25 + 6));
                i25 += 8;
            }
        }
        int i26 = this.header + 10 + (readUnsignedShort2 * 2);
        for (int readUnsignedShort11 = readUnsignedShort(i26 - 2); readUnsignedShort11 > 0; readUnsignedShort11--) {
            i26 = m23416e(classVisitor, context, i26);
        }
        int i27 = i26 + 2;
        for (int readUnsignedShort12 = readUnsignedShort(i27 - 2); readUnsignedShort12 > 0; readUnsignedShort12--) {
            i27 = m23405p(classVisitor, context, i27);
        }
        classVisitor.visitEnd();
    }

    /* renamed from: b */
    public final int m23419b(int i, boolean z, boolean z2, Context context) {
        int i2;
        int i3;
        char[] cArr = context.f7034c;
        Label[] labelArr = context.f7039h;
        if (z) {
            int i4 = i + 1;
            i3 = this.f6988b[i] & DefaultClassResolver.NAME;
            i2 = i4;
        } else {
            context.f7042k = -1;
            i2 = i;
            i3 = 255;
        }
        context.f7048q = 0;
        if (i3 < 64) {
            context.f7046o = 3;
            context.f7050s = 0;
        } else if (i3 < 128) {
            i3 -= 64;
            i2 = m23414g(context.f7051t, 0, i2, cArr, labelArr);
            context.f7046o = 4;
            context.f7050s = 1;
        } else {
            int readUnsignedShort = readUnsignedShort(i2);
            i2 += 2;
            if (i3 == 247) {
                i2 = m23414g(context.f7051t, 0, i2, cArr, labelArr);
                context.f7046o = 4;
                context.f7050s = 1;
            } else {
                if (i3 >= 248 && i3 < 251) {
                    context.f7046o = 2;
                    int i5 = 251 - i3;
                    context.f7048q = i5;
                    context.f7047p -= i5;
                } else if (i3 == 251) {
                    context.f7046o = 3;
                } else if (i3 < 255) {
                    int i6 = i3 - 251;
                    int i7 = z2 ? context.f7047p : 0;
                    int i8 = i6;
                    while (i8 > 0) {
                        i2 = m23414g(context.f7049r, i7, i2, cArr, labelArr);
                        i8--;
                        i7++;
                    }
                    context.f7046o = 1;
                    context.f7048q = i6;
                    context.f7047p += i6;
                } else {
                    context.f7046o = 0;
                    int readUnsignedShort2 = readUnsignedShort(i2);
                    int i9 = i2 + 2;
                    context.f7048q = readUnsignedShort2;
                    context.f7047p = readUnsignedShort2;
                    int i10 = 0;
                    while (readUnsignedShort2 > 0) {
                        i9 = m23414g(context.f7049r, i10, i9, cArr, labelArr);
                        readUnsignedShort2--;
                        i10++;
                    }
                    int readUnsignedShort3 = readUnsignedShort(i9);
                    i2 = i9 + 2;
                    context.f7050s = readUnsignedShort3;
                    int i11 = 0;
                    while (readUnsignedShort3 > 0) {
                        i2 = m23414g(context.f7051t, i11, i2, cArr, labelArr);
                        readUnsignedShort3--;
                        i11++;
                    }
                }
                context.f7050s = 0;
            }
            i3 = readUnsignedShort;
        }
        int i12 = context.f7042k + i3 + 1;
        context.f7042k = i12;
        readLabel(i12, labelArr);
        return i2;
    }

    /* renamed from: c */
    public final int m23418c(int i, char[] cArr, String str, AnnotationVisitor annotationVisitor) {
        Object readConst;
        Object sh;
        int i2 = 0;
        if (annotationVisitor == null) {
            int i3 = this.f6988b[i] & DefaultClassResolver.NAME;
            return i3 != 64 ? i3 != 91 ? i3 != 101 ? i + 3 : i + 5 : m23417d(i + 1, cArr, false, null) : m23417d(i + 3, cArr, true, null);
        }
        int i4 = i + 1;
        int i5 = this.f6988b[i] & DefaultClassResolver.NAME;
        if (i5 != 64) {
            if (i5 != 70) {
                if (i5 != 83) {
                    if (i5 == 99) {
                        readConst = Type.getType(readUTF8(i4, cArr));
                    } else if (i5 == 101) {
                        annotationVisitor.visitEnum(str, readUTF8(i4, cArr), readUTF8(i4 + 2, cArr));
                        return i4 + 4;
                    } else if (i5 == 115) {
                        readConst = readUTF8(i4, cArr);
                    } else if (i5 != 73 && i5 != 74) {
                        if (i5 == 90) {
                            readConst = readInt(this.f6987a[readUnsignedShort(i4)]) == 0 ? Boolean.FALSE : Boolean.TRUE;
                        } else if (i5 == 91) {
                            int readUnsignedShort = readUnsignedShort(i4);
                            int i6 = i4 + 2;
                            if (readUnsignedShort == 0) {
                                return m23417d(i6 - 2, cArr, false, annotationVisitor.visitArray(str));
                            }
                            int i7 = i6 + 1;
                            int i8 = this.f6988b[i6] & DefaultClassResolver.NAME;
                            if (i8 == 70) {
                                float[] fArr = new float[readUnsignedShort];
                                while (i2 < readUnsignedShort) {
                                    fArr[i2] = Float.intBitsToFloat(readInt(this.f6987a[readUnsignedShort(i7)]));
                                    i7 += 3;
                                    i2++;
                                }
                                annotationVisitor.visit(str, fArr);
                            } else if (i8 == 83) {
                                short[] sArr = new short[readUnsignedShort];
                                while (i2 < readUnsignedShort) {
                                    sArr[i2] = (short) readInt(this.f6987a[readUnsignedShort(i7)]);
                                    i7 += 3;
                                    i2++;
                                }
                                annotationVisitor.visit(str, sArr);
                            } else if (i8 == 90) {
                                boolean[] zArr = new boolean[readUnsignedShort];
                                for (int i9 = 0; i9 < readUnsignedShort; i9++) {
                                    zArr[i9] = readInt(this.f6987a[readUnsignedShort(i7)]) != 0;
                                    i7 += 3;
                                }
                                annotationVisitor.visit(str, zArr);
                            } else if (i8 == 73) {
                                int[] iArr = new int[readUnsignedShort];
                                while (i2 < readUnsignedShort) {
                                    iArr[i2] = readInt(this.f6987a[readUnsignedShort(i7)]);
                                    i7 += 3;
                                    i2++;
                                }
                                annotationVisitor.visit(str, iArr);
                            } else if (i8 != 74) {
                                switch (i8) {
                                    case 66:
                                        byte[] bArr = new byte[readUnsignedShort];
                                        while (i2 < readUnsignedShort) {
                                            bArr[i2] = (byte) readInt(this.f6987a[readUnsignedShort(i7)]);
                                            i7 += 3;
                                            i2++;
                                        }
                                        annotationVisitor.visit(str, bArr);
                                        break;
                                    case 67:
                                        char[] cArr2 = new char[readUnsignedShort];
                                        while (i2 < readUnsignedShort) {
                                            cArr2[i2] = (char) readInt(this.f6987a[readUnsignedShort(i7)]);
                                            i7 += 3;
                                            i2++;
                                        }
                                        annotationVisitor.visit(str, cArr2);
                                        break;
                                    case 68:
                                        double[] dArr = new double[readUnsignedShort];
                                        while (i2 < readUnsignedShort) {
                                            dArr[i2] = Double.longBitsToDouble(readLong(this.f6987a[readUnsignedShort(i7)]));
                                            i7 += 3;
                                            i2++;
                                        }
                                        annotationVisitor.visit(str, dArr);
                                        break;
                                    default:
                                        return m23417d(i7 - 3, cArr, false, annotationVisitor.visitArray(str));
                                }
                            } else {
                                long[] jArr = new long[readUnsignedShort];
                                while (i2 < readUnsignedShort) {
                                    jArr[i2] = readLong(this.f6987a[readUnsignedShort(i7)]);
                                    i7 += 3;
                                    i2++;
                                }
                                annotationVisitor.visit(str, jArr);
                            }
                            return i7 - 1;
                        } else {
                            switch (i5) {
                                case 66:
                                    sh = new Byte((byte) readInt(this.f6987a[readUnsignedShort(i4)]));
                                    break;
                                case 67:
                                    sh = new Character((char) readInt(this.f6987a[readUnsignedShort(i4)]));
                                    break;
                                case 68:
                                    break;
                                default:
                                    return i4;
                            }
                        }
                    }
                    annotationVisitor.visit(str, readConst);
                    return i4 + 2;
                }
                sh = new Short((short) readInt(this.f6987a[readUnsignedShort(i4)]));
                annotationVisitor.visit(str, sh);
                return i4 + 2;
            }
            readConst = readConst(readUnsignedShort(i4), cArr);
            annotationVisitor.visit(str, readConst);
            return i4 + 2;
        }
        return m23417d(i4 + 2, cArr, true, annotationVisitor.visitAnnotation(str, readUTF8(i4, cArr)));
    }

    /* renamed from: d */
    public final int m23417d(int i, char[] cArr, boolean z, AnnotationVisitor annotationVisitor) {
        int readUnsignedShort = readUnsignedShort(i);
        int i2 = i + 2;
        if (z) {
            while (readUnsignedShort > 0) {
                i2 = m23418c(i2 + 2, cArr, readUTF8(i2, cArr), annotationVisitor);
                readUnsignedShort--;
            }
        } else {
            while (readUnsignedShort > 0) {
                i2 = m23418c(i2, cArr, null, annotationVisitor);
                readUnsignedShort--;
            }
        }
        if (annotationVisitor != null) {
            annotationVisitor.visitEnd();
        }
        return i2;
    }

    /* renamed from: e */
    public final int m23416e(ClassVisitor classVisitor, Context context, int i) {
        int i2;
        Context context2 = context;
        char[] cArr = context2.f7034c;
        int readUnsignedShort = readUnsignedShort(i);
        String readUTF8 = readUTF8(i + 2, cArr);
        String readUTF82 = readUTF8(i + 4, cArr);
        int i3 = i + 6;
        int i4 = i3;
        int i5 = readUnsignedShort;
        int readUnsignedShort2 = readUnsignedShort(i3);
        Attribute attribute = null;
        String str = null;
        Object obj = null;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (readUnsignedShort2 > 0) {
            String readUTF83 = readUTF8(i4 + 2, cArr);
            if ("ConstantValue".equals(readUTF83)) {
                int readUnsignedShort3 = readUnsignedShort(i4 + 8);
                obj = readUnsignedShort3 == 0 ? null : readConst(readUnsignedShort3, cArr);
            } else if ("Signature".equals(readUTF83)) {
                str = readUTF8(i4 + 8, cArr);
            } else {
                if ("Deprecated".equals(readUTF83)) {
                    i2 = 131072;
                } else if ("Synthetic".equals(readUTF83)) {
                    i2 = 266240;
                } else if ("RuntimeVisibleAnnotations".equals(readUTF83)) {
                    i9 = i4 + 8;
                } else if ("RuntimeVisibleTypeAnnotations".equals(readUTF83)) {
                    i7 = i4 + 8;
                } else if ("RuntimeInvisibleAnnotations".equals(readUTF83)) {
                    i8 = i4 + 8;
                } else if ("RuntimeInvisibleTypeAnnotations".equals(readUTF83)) {
                    i6 = i4 + 8;
                } else {
                    Attribute attribute2 = attribute;
                    int i10 = i6;
                    int i11 = i7;
                    int i12 = i8;
                    int i13 = i9;
                    attribute = m23413h(context2.f7032a, readUTF83, i4 + 8, readInt(i4 + 4), cArr, -1, null);
                    if (attribute != null) {
                        attribute.f6984b = attribute2;
                        i8 = i12;
                    } else {
                        i8 = i12;
                        attribute = attribute2;
                    }
                    i9 = i13;
                    i6 = i10;
                    i7 = i11;
                }
                i5 |= i2;
            }
            i4 += readInt(i4 + 4) + 6;
            readUnsignedShort2--;
            context2 = context;
        }
        Attribute attribute3 = attribute;
        int i14 = i6;
        int i15 = i7;
        int i16 = i8;
        int i17 = i9;
        int i18 = i4 + 2;
        FieldVisitor visitField = classVisitor.visitField(i5, readUTF8, readUTF82, str, obj);
        if (visitField == null) {
            return i18;
        }
        if (i17 != 0) {
            int i19 = i17 + 2;
            for (int readUnsignedShort4 = readUnsignedShort(i17); readUnsignedShort4 > 0; readUnsignedShort4--) {
                i19 = m23417d(i19 + 2, cArr, true, visitField.visitAnnotation(readUTF8(i19, cArr), true));
            }
        }
        if (i16 != 0) {
            int i20 = i16 + 2;
            for (int readUnsignedShort5 = readUnsignedShort(i16); readUnsignedShort5 > 0; readUnsignedShort5--) {
                i20 = m23417d(i20 + 2, cArr, true, visitField.visitAnnotation(readUTF8(i20, cArr), false));
            }
        }
        if (i15 != 0) {
            int i21 = i15 + 2;
            for (int readUnsignedShort6 = readUnsignedShort(i15); readUnsignedShort6 > 0; readUnsignedShort6--) {
                int m23415f = m23415f(context, i21);
                i21 = m23417d(m23415f + 2, cArr, true, visitField.visitTypeAnnotation(context.f7040i, context.f7041j, readUTF8(m23415f, cArr), true));
            }
        }
        if (i14 != 0) {
            int i22 = i14 + 2;
            for (int readUnsignedShort7 = readUnsignedShort(i14); readUnsignedShort7 > 0; readUnsignedShort7--) {
                int m23415f2 = m23415f(context, i22);
                i22 = m23417d(m23415f2 + 2, cArr, true, visitField.visitTypeAnnotation(context.f7040i, context.f7041j, readUTF8(m23415f2, cArr), false));
            }
        }
        while (attribute3 != null) {
            Attribute attribute4 = attribute3.f6984b;
            attribute3.f6984b = null;
            visitField.visitAttribute(attribute3);
            attribute3 = attribute4;
        }
        visitField.visitEnd();
        return i18;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0084  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m23415f(com.esotericsoftware.asm.Context r9, int r10) {
        /*
            r8 = this;
            int r0 = r8.readInt(r10)
            int r1 = r0 >>> 24
            r2 = 1
            if (r1 == 0) goto L75
            if (r1 == r2) goto L75
            r3 = 64
            r4 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            if (r1 == r3) goto L2f
            r3 = 65
            if (r1 == r3) goto L2f
            switch(r1) {
                case 19: goto L2c;
                case 20: goto L2c;
                case 21: goto L2c;
                case 22: goto L75;
                default: goto L18;
            }
        L18:
            switch(r1) {
                case 71: goto L25;
                case 72: goto L25;
                case 73: goto L25;
                case 74: goto L25;
                case 75: goto L25;
                default: goto L1b;
            }
        L1b:
            r3 = 67
            if (r1 >= r3) goto L21
            r4 = -256(0xffffffffffffff00, float:NaN)
        L21:
            r0 = r0 & r4
            int r10 = r10 + 3
            goto L7a
        L25:
            r1 = -16776961(0xffffffffff0000ff, float:-1.7014636E38)
            r0 = r0 & r1
            int r10 = r10 + 4
            goto L7a
        L2c:
            r0 = r0 & r4
            int r10 = r10 + r2
            goto L7a
        L2f:
            r0 = r0 & r4
            int r1 = r10 + 1
            int r1 = r8.readUnsignedShort(r1)
            com.esotericsoftware.asm.Label[] r3 = new com.esotericsoftware.asm.Label[r1]
            r9.f7043l = r3
            com.esotericsoftware.asm.Label[] r3 = new com.esotericsoftware.asm.Label[r1]
            r9.f7044m = r3
            int[] r3 = new int[r1]
            r9.f7045n = r3
            int r10 = r10 + 3
            r3 = 0
        L45:
            if (r3 >= r1) goto L7a
            int r4 = r8.readUnsignedShort(r10)
            int r5 = r10 + 2
            int r5 = r8.readUnsignedShort(r5)
            com.esotericsoftware.asm.Label[] r6 = r9.f7043l
            com.esotericsoftware.asm.Label[] r7 = r9.f7039h
            com.esotericsoftware.asm.Label r7 = r8.readLabel(r4, r7)
            r6[r3] = r7
            com.esotericsoftware.asm.Label[] r6 = r9.f7044m
            int r4 = r4 + r5
            com.esotericsoftware.asm.Label[] r5 = r9.f7039h
            com.esotericsoftware.asm.Label r4 = r8.readLabel(r4, r5)
            r6[r3] = r4
            int[] r4 = r9.f7045n
            int r5 = r10 + 4
            int r5 = r8.readUnsignedShort(r5)
            r4[r3] = r5
            int r10 = r10 + 6
            int r3 = r3 + 1
            goto L45
        L75:
            r1 = -65536(0xffffffffffff0000, float:NaN)
            r0 = r0 & r1
            int r10 = r10 + 2
        L7a:
            int r1 = r8.readByte(r10)
            r9.f7040i = r0
            if (r1 != 0) goto L84
            r0 = 0
            goto L8b
        L84:
            com.esotericsoftware.asm.TypePath r0 = new com.esotericsoftware.asm.TypePath
            byte[] r3 = r8.f6988b
            r0.<init>(r3, r10)
        L8b:
            r9.f7041j = r0
            int r10 = r10 + r2
            int r1 = r1 * 2
            int r10 = r10 + r1
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.ClassReader.m23415f(com.esotericsoftware.asm.Context, int):int");
    }

    /* renamed from: g */
    public final int m23414g(Object[] objArr, int i, int i2, char[] cArr, Label[] labelArr) {
        int i3 = i2 + 1;
        switch (this.f6988b[i2] & DefaultClassResolver.NAME) {
            case 0:
                objArr[i] = Opcodes.TOP;
                return i3;
            case 1:
                objArr[i] = Opcodes.INTEGER;
                return i3;
            case 2:
                objArr[i] = Opcodes.FLOAT;
                return i3;
            case 3:
                objArr[i] = Opcodes.DOUBLE;
                return i3;
            case 4:
                objArr[i] = Opcodes.LONG;
                return i3;
            case 5:
                objArr[i] = Opcodes.NULL;
                return i3;
            case 6:
                objArr[i] = Opcodes.UNINITIALIZED_THIS;
                return i3;
            case 7:
                objArr[i] = readClass(i3, cArr);
                break;
            default:
                objArr[i] = readLabel(readUnsignedShort(i3), labelArr);
                break;
        }
        return i3 + 2;
    }

    public int getAccess() {
        return readUnsignedShort(this.header);
    }

    public String getClassName() {
        return readClass(this.header + 2, new char[this.f6990d]);
    }

    public String[] getInterfaces() {
        int i = this.header + 6;
        int readUnsignedShort = readUnsignedShort(i);
        String[] strArr = new String[readUnsignedShort];
        if (readUnsignedShort > 0) {
            char[] cArr = new char[this.f6990d];
            for (int i2 = 0; i2 < readUnsignedShort; i2++) {
                i += 2;
                strArr[i2] = readClass(i, cArr);
            }
        }
        return strArr;
    }

    public int getItem(int i) {
        return this.f6987a[i];
    }

    public int getItemCount() {
        return this.f6987a.length;
    }

    public int getMaxStringLength() {
        return this.f6990d;
    }

    public String getSuperName() {
        return readClass(this.header + 4, new char[this.f6990d]);
    }

    /* renamed from: h */
    public final Attribute m23413h(Attribute[] attributeArr, String str, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
        for (int i4 = 0; i4 < attributeArr.length; i4++) {
            if (attributeArr[i4].type.equals(str)) {
                return attributeArr[i4].read(this, i, i2, cArr, i3, labelArr);
            }
        }
        return new Attribute(str).read(this, i, i2, null, -1, null);
    }

    /* renamed from: i */
    public final String m23412i(int i, int i2, char[] cArr) {
        int i3;
        int i4 = i2 + i;
        byte[] bArr = this.f6988b;
        int i5 = 0;
        char c = 0;
        char c2 = 0;
        while (i < i4) {
            int i6 = i + 1;
            byte b = bArr[i];
            if (c != 0) {
                if (c == 1) {
                    cArr[i5] = (char) ((b & 63) | (c2 << 6));
                    i5++;
                    c = 0;
                } else if (c == 2) {
                    i3 = (b & 63) | (c2 << 6);
                    c2 = (char) i3;
                    c = 1;
                }
                i = i6;
            } else {
                int i7 = b & DefaultClassResolver.NAME;
                if (i7 < 128) {
                    cArr[i5] = (char) i7;
                    i5++;
                } else if (i7 >= 224 || i7 <= 191) {
                    c2 = (char) (i7 & 15);
                    c = 2;
                } else {
                    i3 = i7 & 31;
                    c2 = (char) i3;
                    c = 1;
                }
                i = i6;
            }
        }
        return new String(cArr, 0, i5);
    }

    /* renamed from: j */
    public void m23411j(ClassWriter classWriter) {
        char[] cArr = new char[this.f6990d];
        int length = this.f6987a.length;
        Item[] itemArr = new Item[length];
        int i = 1;
        while (i < length) {
            int i2 = this.f6987a[i];
            byte b = this.f6988b[i2 - 1];
            Item item = new Item(i);
            if (b == 1) {
                String[] strArr = this.f6989c;
                String str = strArr[i];
                if (str == null) {
                    int i3 = this.f6987a[i];
                    str = m23412i(i3 + 2, readUnsignedShort(i3), cArr);
                    strArr[i] = str;
                }
                item.m23359e(b, str, null, null);
            } else if (b == 15) {
                int i4 = this.f6987a[readUnsignedShort(i2 + 1)];
                int i5 = this.f6987a[readUnsignedShort(i4 + 2)];
                item.m23359e(readByte(i2) + 20, readClass(i4, cArr), readUTF8(i5, cArr), readUTF8(i5 + 2, cArr));
            } else if (b == 18) {
                if (classWriter.f6998F == null) {
                    m23410k(classWriter, itemArr, cArr);
                }
                int i6 = this.f6987a[readUnsignedShort(i2 + 2)];
                item.m23357g(readUTF8(i6, cArr), readUTF8(i6 + 2, cArr), readUnsignedShort(i2));
            } else if (b == 3) {
                item.m23361c(readInt(i2));
            } else if (b != 4) {
                if (b == 5) {
                    item.m23358f(readLong(i2));
                } else if (b != 6) {
                    switch (b) {
                        case 9:
                        case 10:
                        case 11:
                            int i7 = this.f6987a[readUnsignedShort(i2 + 2)];
                            item.m23359e(b, readClass(i2, cArr), readUTF8(i7, cArr), readUTF8(i7 + 2, cArr));
                            continue;
                        case 12:
                            item.m23359e(b, readUTF8(i2, cArr), readUTF8(i2 + 2, cArr), null);
                            continue;
                        default:
                            item.m23359e(b, readUTF8(i2, cArr), null, null);
                            continue;
                    }
                } else {
                    item.m23363a(Double.longBitsToDouble(readLong(i2)));
                }
                i++;
            } else {
                item.m23362b(Float.intBitsToFloat(readInt(i2)));
            }
            int i8 = item.f7094h % length;
            item.f7095i = itemArr[i8];
            itemArr[i8] = item;
            i++;
        }
        int i9 = this.f6987a[1] - 1;
        classWriter.f7009d.putByteArray(this.f6988b, i9, this.header - i9);
        classWriter.f7010e = itemArr;
        double d = length;
        Double.isNaN(d);
        classWriter.f7011f = (int) (d * 0.75d);
        classWriter.f7008c = length;
    }

    /* renamed from: k */
    public final void m23410k(ClassWriter classWriter, Item[] itemArr, char[] cArr) {
        int i;
        boolean z;
        int m23420a = m23420a();
        int readUnsignedShort = readUnsignedShort(m23420a);
        while (true) {
            if (readUnsignedShort <= 0) {
                z = false;
                break;
            } else if ("BootstrapMethods".equals(readUTF8(m23420a + 2, cArr))) {
                z = true;
                break;
            } else {
                m23420a += readInt(m23420a + 4) + 6;
                readUnsignedShort--;
            }
        }
        if (z) {
            int readUnsignedShort2 = readUnsignedShort(m23420a + 8);
            int i2 = m23420a + 10;
            int i3 = i2;
            for (i = 0; i < readUnsignedShort2; i++) {
                int i4 = (i3 - m23420a) - 10;
                int hashCode = readConst(readUnsignedShort(i3), cArr).hashCode();
                for (int readUnsignedShort3 = readUnsignedShort(i3 + 2); readUnsignedShort3 > 0; readUnsignedShort3--) {
                    hashCode ^= readConst(readUnsignedShort(i3 + 4), cArr).hashCode();
                    i3 += 2;
                }
                i3 += 4;
                Item item = new Item(i);
                item.m23360d(i4, hashCode & Integer.MAX_VALUE);
                int length = item.f7094h % itemArr.length;
                item.f7095i = itemArr[length];
                itemArr[length] = item;
            }
            int readInt = readInt(m23420a + 4);
            ByteVector byteVector = new ByteVector(readInt + 62);
            byteVector.putByteArray(this.f6988b, i2, readInt - 2);
            classWriter.f6997E = readUnsignedShort2;
            classWriter.f6998F = byteVector;
        }
    }

    /* renamed from: l */
    public final void m23409l(Context context) {
        int i;
        String str = context.f7038g;
        Object[] objArr = context.f7049r;
        int i2 = 0;
        if ((context.f7036e & 8) == 0) {
            if (MethodDescription.CONSTRUCTOR_INTERNAL_NAME.equals(context.f7037f)) {
                objArr[0] = Opcodes.UNINITIALIZED_THIS;
            } else {
                objArr[0] = readClass(this.header + 2, context.f7034c);
            }
            i2 = 1;
        }
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt = str.charAt(i3);
            if (charAt == 'F') {
                i = i2 + 1;
                objArr[i2] = Opcodes.FLOAT;
            } else if (charAt != 'L') {
                if (charAt != 'S' && charAt != 'I') {
                    if (charAt == 'J') {
                        i = i2 + 1;
                        objArr[i2] = Opcodes.LONG;
                    } else if (charAt != 'Z') {
                        if (charAt != '[') {
                            switch (charAt) {
                                case 'B':
                                case 'C':
                                    break;
                                case 'D':
                                    i = i2 + 1;
                                    objArr[i2] = Opcodes.DOUBLE;
                                    break;
                                default:
                                    context.f7047p = i2;
                                    return;
                            }
                        } else {
                            while (str.charAt(i4) == '[') {
                                i4++;
                            }
                            if (str.charAt(i4) == 'L') {
                                do {
                                    i4++;
                                } while (str.charAt(i4) != ';');
                                int i5 = i4 + 1;
                                objArr[i2] = str.substring(i3, i5);
                                i3 = i5;
                                i2++;
                            } else {
                                int i52 = i4 + 1;
                                objArr[i2] = str.substring(i3, i52);
                                i3 = i52;
                                i2++;
                            }
                        }
                    }
                }
                i = i2 + 1;
                objArr[i2] = Opcodes.INTEGER;
            } else {
                int i6 = i4;
                while (str.charAt(i6) != ';') {
                    i6++;
                }
                objArr[i2] = str.substring(i4, i6);
                i2++;
                i3 = i6 + 1;
            }
            i2 = i;
            i3 = i4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x05ab  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0638  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x069d  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x06c1  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x06fc  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0719  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0755  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x075c  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x077c  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23408m(com.esotericsoftware.asm.MethodVisitor r42, com.esotericsoftware.asm.Context r43, int r44) {
        /*
            Method dump skipped, instructions count: 2464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.ClassReader.m23408m(com.esotericsoftware.asm.MethodVisitor, com.esotericsoftware.asm.Context, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007d  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] m23406o(com.esotericsoftware.asm.MethodVisitor r12, com.esotericsoftware.asm.Context r13, int r14, boolean r15) {
        /*
            r11 = this;
            char[] r0 = r13.f7034c
            int r1 = r11.readUnsignedShort(r14)
            int[] r2 = new int[r1]
            int r14 = r14 + 2
            r3 = 0
        Lb:
            if (r3 >= r1) goto L89
            r2[r3] = r14
            int r4 = r11.readInt(r14)
            int r5 = r4 >>> 24
            r6 = 1
            if (r5 == 0) goto L55
            if (r5 == r6) goto L55
            r7 = 64
            if (r5 == r7) goto L31
            r7 = 65
            if (r5 == r7) goto L31
            switch(r5) {
                case 19: goto L2e;
                case 20: goto L2e;
                case 21: goto L2e;
                case 22: goto L55;
                default: goto L25;
            }
        L25:
            switch(r5) {
                case 71: goto L2b;
                case 72: goto L2b;
                case 73: goto L2b;
                case 74: goto L2b;
                case 75: goto L2b;
                default: goto L28;
            }
        L28:
            int r14 = r14 + 3
            goto L57
        L2b:
            int r14 = r14 + 4
            goto L57
        L2e:
            int r14 = r14 + 1
            goto L57
        L31:
            int r7 = r14 + 1
            int r7 = r11.readUnsignedShort(r7)
        L37:
            if (r7 <= 0) goto L28
            int r8 = r14 + 3
            int r8 = r11.readUnsignedShort(r8)
            int r9 = r14 + 5
            int r9 = r11.readUnsignedShort(r9)
            com.esotericsoftware.asm.Label[] r10 = r13.f7039h
            r11.readLabel(r8, r10)
            int r8 = r8 + r9
            com.esotericsoftware.asm.Label[] r9 = r13.f7039h
            r11.readLabel(r8, r9)
            int r14 = r14 + 6
            int r7 = r7 + (-1)
            goto L37
        L55:
            int r14 = r14 + 2
        L57:
            int r7 = r11.readByte(r14)
            r8 = 66
            r9 = 0
            if (r5 != r8) goto L7d
            if (r7 != 0) goto L63
            goto L6a
        L63:
            com.esotericsoftware.asm.TypePath r9 = new com.esotericsoftware.asm.TypePath
            byte[] r5 = r11.f6988b
            r9.<init>(r5, r14)
        L6a:
            int r7 = r7 * 2
            int r7 = r7 + r6
            int r14 = r14 + r7
            int r5 = r14 + 2
            java.lang.String r14 = r11.readUTF8(r14, r0)
            com.esotericsoftware.asm.AnnotationVisitor r14 = r12.visitTryCatchAnnotation(r4, r9, r14, r15)
            int r14 = r11.m23417d(r5, r0, r6, r14)
            goto L86
        L7d:
            int r14 = r14 + 3
            int r7 = r7 * 2
            int r14 = r14 + r7
            int r14 = r11.m23417d(r14, r0, r6, r9)
        L86:
            int r3 = r3 + 1
            goto Lb
        L89:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.ClassReader.m23406o(com.esotericsoftware.asm.MethodVisitor, com.esotericsoftware.asm.Context, int, boolean):int[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01b1, code lost:
        if (r1.f7141i == 0) goto L80;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m23405p(com.esotericsoftware.asm.ClassVisitor r32, com.esotericsoftware.asm.Context r33, int r34) {
        /*
            Method dump skipped, instructions count: 705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.ClassReader.m23405p(com.esotericsoftware.asm.ClassVisitor, com.esotericsoftware.asm.Context, int):int");
    }

    /* renamed from: q */
    public final void m23404q(MethodVisitor methodVisitor, Context context, int i, boolean z) {
        int i2 = i + 1;
        int i3 = this.f6988b[i] & DefaultClassResolver.NAME;
        int length = Type.getArgumentTypes(context.f7038g).length - i3;
        int i4 = 0;
        while (i4 < length) {
            AnnotationVisitor visitParameterAnnotation = methodVisitor.visitParameterAnnotation(i4, "Ljava/lang/Synthetic;", false);
            if (visitParameterAnnotation != null) {
                visitParameterAnnotation.visitEnd();
            }
            i4++;
        }
        char[] cArr = context.f7034c;
        while (i4 < i3 + length) {
            i2 += 2;
            for (int readUnsignedShort = readUnsignedShort(i2); readUnsignedShort > 0; readUnsignedShort--) {
                i2 = m23417d(i2 + 2, cArr, true, methodVisitor.visitParameterAnnotation(i4, readUTF8(i2, cArr), z));
            }
            i4++;
        }
    }

    public int readByte(int i) {
        return this.f6988b[i] & DefaultClassResolver.NAME;
    }

    public String readClass(int i, char[] cArr) {
        return readUTF8(this.f6987a[readUnsignedShort(i)], cArr);
    }

    public Object readConst(int i, char[] cArr) {
        int i2 = this.f6987a[i];
        byte b = this.f6988b[i2 - 1];
        if (b != 16) {
            switch (b) {
                case 3:
                    return new Integer(readInt(i2));
                case 4:
                    return new Float(Float.intBitsToFloat(readInt(i2)));
                case 5:
                    return new Long(readLong(i2));
                case 6:
                    return new Double(Double.longBitsToDouble(readLong(i2)));
                case 7:
                    return Type.getObjectType(readUTF8(i2, cArr));
                case 8:
                    return readUTF8(i2, cArr);
                default:
                    int readByte = readByte(i2);
                    int[] iArr = this.f6987a;
                    int i3 = iArr[readUnsignedShort(i2 + 1)];
                    boolean z = this.f6988b[i3 + (-1)] == 11;
                    String readClass = readClass(i3, cArr);
                    int i4 = iArr[readUnsignedShort(i3 + 2)];
                    return new Handle(readByte, readClass, readUTF8(i4, cArr), readUTF8(i4 + 2, cArr), z);
            }
        }
        return Type.getMethodType(readUTF8(i2, cArr));
    }

    public int readInt(int i) {
        byte[] bArr = this.f6988b;
        return (bArr[i + 3] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 24) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 16) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 8);
    }

    public Label readLabel(int i, Label[] labelArr) {
        if (labelArr[i] == null) {
            labelArr[i] = new Label();
        }
        return labelArr[i];
    }

    public long readLong(int i) {
        return (readInt(i) << 32) | (readInt(i + 4) & 4294967295L);
    }

    public short readShort(int i) {
        byte[] bArr = this.f6988b;
        return (short) ((bArr[i + 1] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 8));
    }

    public String readUTF8(int i, char[] cArr) {
        int readUnsignedShort = readUnsignedShort(i);
        if (i == 0 || readUnsignedShort == 0) {
            return null;
        }
        String[] strArr = this.f6989c;
        String str = strArr[readUnsignedShort];
        if (str != null) {
            return str;
        }
        int i2 = this.f6987a[readUnsignedShort];
        String m23412i = m23412i(i2 + 2, readUnsignedShort(i2), cArr);
        strArr[readUnsignedShort] = m23412i;
        return m23412i;
    }

    public int readUnsignedShort(int i) {
        byte[] bArr = this.f6988b;
        return (bArr[i + 1] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 8);
    }
}
