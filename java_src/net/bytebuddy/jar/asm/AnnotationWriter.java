package net.bytebuddy.jar.asm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AnnotationWriter extends AnnotationVisitor {
    private final ByteVector annotation;
    private AnnotationWriter nextAnnotation;
    private int numElementValuePairs;
    private final int numElementValuePairsOffset;
    private final AnnotationWriter previousAnnotation;
    private final SymbolTable symbolTable;
    private final boolean useNamedValues;

    /* renamed from: b */
    public static int m14934b(AnnotationWriter annotationWriter, AnnotationWriter annotationWriter2, AnnotationWriter annotationWriter3, AnnotationWriter annotationWriter4) {
        int m14935a = annotationWriter != null ? 0 + annotationWriter.m14935a("RuntimeVisibleAnnotations") : 0;
        if (annotationWriter2 != null) {
            m14935a += annotationWriter2.m14935a("RuntimeInvisibleAnnotations");
        }
        if (annotationWriter3 != null) {
            m14935a += annotationWriter3.m14935a("RuntimeVisibleTypeAnnotations");
        }
        if (annotationWriter4 != null) {
            return m14935a + annotationWriter4.m14935a("RuntimeInvisibleTypeAnnotations");
        }
        return m14935a;
    }

    /* renamed from: f */
    public void m14930f(int i, ByteVector byteVector) {
        int i2 = 2;
        int i3 = 0;
        AnnotationWriter annotationWriter = null;
        for (AnnotationWriter annotationWriter2 = this; annotationWriter2 != null; annotationWriter2 = annotationWriter2.previousAnnotation) {
            annotationWriter2.visitEnd();
            i2 += annotationWriter2.annotation.f19174b;
            i3++;
            annotationWriter = annotationWriter2;
        }
        byteVector.putShort(i);
        byteVector.putInt(i2);
        byteVector.putShort(i3);
        while (annotationWriter != null) {
            ByteVector byteVector2 = annotationWriter.annotation;
            byteVector.putByteArray(byteVector2.f19173a, 0, byteVector2.f19174b);
            annotationWriter = annotationWriter.nextAnnotation;
        }
    }

    public AnnotationWriter(SymbolTable symbolTable, boolean z, ByteVector byteVector, AnnotationWriter annotationWriter) {
        super(Opcodes.ASM9);
        int i;
        this.symbolTable = symbolTable;
        this.useNamedValues = z;
        this.annotation = byteVector;
        int i2 = byteVector.f19174b;
        if (i2 == 0) {
            i = -1;
        } else {
            i = i2 - 2;
        }
        this.numElementValuePairsOffset = i;
        this.previousAnnotation = annotationWriter;
        if (annotationWriter != null) {
            annotationWriter.nextAnnotation = this;
        }
    }

    /* renamed from: c */
    public static int m14933c(String str, AnnotationWriter[] annotationWriterArr, int i) {
        int i2 = (i * 2) + 7;
        for (int i3 = 0; i3 < i; i3++) {
            AnnotationWriter annotationWriter = annotationWriterArr[i3];
            i2 += annotationWriter == null ? 0 : annotationWriter.m14935a(str) - 8;
        }
        return i2;
    }

    /* renamed from: d */
    public static AnnotationWriter m14932d(SymbolTable symbolTable, int i, TypePath typePath, String str, AnnotationWriter annotationWriter) {
        ByteVector byteVector = new ByteVector();
        TypeReference.m14833a(i, byteVector);
        TypePath.m14834a(typePath, byteVector);
        byteVector.putShort(symbolTable.m14844r(str)).putShort(0);
        return new AnnotationWriter(symbolTable, true, byteVector, annotationWriter);
    }

    /* renamed from: e */
    public static AnnotationWriter m14931e(SymbolTable symbolTable, String str, AnnotationWriter annotationWriter) {
        ByteVector byteVector = new ByteVector();
        byteVector.putShort(symbolTable.m14844r(str)).putShort(0);
        return new AnnotationWriter(symbolTable, true, byteVector, annotationWriter);
    }

    /* renamed from: g */
    public static void m14929g(SymbolTable symbolTable, AnnotationWriter annotationWriter, AnnotationWriter annotationWriter2, AnnotationWriter annotationWriter3, AnnotationWriter annotationWriter4, ByteVector byteVector) {
        if (annotationWriter != null) {
            annotationWriter.m14930f(symbolTable.m14844r("RuntimeVisibleAnnotations"), byteVector);
        }
        if (annotationWriter2 != null) {
            annotationWriter2.m14930f(symbolTable.m14844r("RuntimeInvisibleAnnotations"), byteVector);
        }
        if (annotationWriter3 != null) {
            annotationWriter3.m14930f(symbolTable.m14844r("RuntimeVisibleTypeAnnotations"), byteVector);
        }
        if (annotationWriter4 != null) {
            annotationWriter4.m14930f(symbolTable.m14844r("RuntimeInvisibleTypeAnnotations"), byteVector);
        }
    }

    /* renamed from: h */
    public static void m14928h(int i, AnnotationWriter[] annotationWriterArr, int i2, ByteVector byteVector) {
        int i3 = (i2 * 2) + 1;
        for (int i4 = 0; i4 < i2; i4++) {
            AnnotationWriter annotationWriter = annotationWriterArr[i4];
            i3 += annotationWriter == null ? 0 : annotationWriter.m14935a(null) - 8;
        }
        byteVector.putShort(i);
        byteVector.putInt(i3);
        byteVector.putByte(i2);
        for (int i5 = 0; i5 < i2; i5++) {
            AnnotationWriter annotationWriter2 = null;
            int i6 = 0;
            for (AnnotationWriter annotationWriter3 = annotationWriterArr[i5]; annotationWriter3 != null; annotationWriter3 = annotationWriter3.previousAnnotation) {
                annotationWriter3.visitEnd();
                i6++;
                annotationWriter2 = annotationWriter3;
            }
            byteVector.putShort(i6);
            while (annotationWriter2 != null) {
                ByteVector byteVector2 = annotationWriter2.annotation;
                byteVector.putByteArray(byteVector2.f19173a, 0, byteVector2.f19174b);
                annotationWriter2 = annotationWriter2.nextAnnotation;
            }
        }
    }

    /* renamed from: a */
    public int m14935a(String str) {
        if (str != null) {
            this.symbolTable.m14844r(str);
        }
        int i = 8;
        for (AnnotationWriter annotationWriter = this; annotationWriter != null; annotationWriter = annotationWriter.previousAnnotation) {
            i += annotationWriter.annotation.f19174b;
        }
        return i;
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public void visit(String str, Object obj) {
        this.numElementValuePairs++;
        if (this.useNamedValues) {
            this.annotation.putShort(this.symbolTable.m14844r(str));
        }
        if (obj instanceof String) {
            this.annotation.m14915d(115, this.symbolTable.m14844r((String) obj));
        } else if (obj instanceof Byte) {
            this.annotation.m14915d(66, this.symbolTable.m14854h(((Byte) obj).byteValue()).f19224a);
        } else if (obj instanceof Boolean) {
            this.annotation.m14915d(90, this.symbolTable.m14854h(((Boolean) obj).booleanValue() ? 1 : 0).f19224a);
        } else if (obj instanceof Character) {
            this.annotation.m14915d(67, this.symbolTable.m14854h(((Character) obj).charValue()).f19224a);
        } else if (obj instanceof Short) {
            this.annotation.m14915d(83, this.symbolTable.m14854h(((Short) obj).shortValue()).f19224a);
        } else if (obj instanceof Type) {
            this.annotation.m14915d(99, this.symbolTable.m14844r(((Type) obj).getDescriptor()));
        } else {
            int i = 0;
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.annotation.m14915d(91, bArr.length);
                int length = bArr.length;
                while (i < length) {
                    this.annotation.m14915d(66, this.symbolTable.m14854h(bArr[i]).f19224a);
                    i++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                this.annotation.m14915d(91, zArr.length);
                int length2 = zArr.length;
                while (i < length2) {
                    this.annotation.m14915d(90, this.symbolTable.m14854h(zArr[i] ? 1 : 0).f19224a);
                    i++;
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                this.annotation.m14915d(91, sArr.length);
                int length3 = sArr.length;
                while (i < length3) {
                    this.annotation.m14915d(83, this.symbolTable.m14854h(sArr[i]).f19224a);
                    i++;
                }
            } else if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                this.annotation.m14915d(91, cArr.length);
                int length4 = cArr.length;
                while (i < length4) {
                    this.annotation.m14915d(67, this.symbolTable.m14854h(cArr[i]).f19224a);
                    i++;
                }
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                this.annotation.m14915d(91, iArr.length);
                int length5 = iArr.length;
                while (i < length5) {
                    this.annotation.m14915d(73, this.symbolTable.m14854h(iArr[i]).f19224a);
                    i++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                this.annotation.m14915d(91, jArr.length);
                int length6 = jArr.length;
                while (i < length6) {
                    this.annotation.m14915d(74, this.symbolTable.m14852j(jArr[i]).f19224a);
                    i++;
                }
            } else if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                this.annotation.m14915d(91, fArr.length);
                int length7 = fArr.length;
                while (i < length7) {
                    this.annotation.m14915d(70, this.symbolTable.m14855g(fArr[i]).f19224a);
                    i++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                this.annotation.m14915d(91, dArr.length);
                int length8 = dArr.length;
                while (i < length8) {
                    this.annotation.m14915d(68, this.symbolTable.m14858d(dArr[i]).f19224a);
                    i++;
                }
            } else {
                Symbol m14860b = this.symbolTable.m14860b(obj);
                this.annotation.m14915d(".s.IFJDCS".charAt(m14860b.f19225b), m14860b.f19224a);
            }
        }
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public AnnotationVisitor visitAnnotation(String str, String str2) {
        this.numElementValuePairs++;
        if (this.useNamedValues) {
            this.annotation.putShort(this.symbolTable.m14844r(str));
        }
        this.annotation.m14915d(64, this.symbolTable.m14844r(str2)).putShort(0);
        return new AnnotationWriter(this.symbolTable, true, this.annotation, null);
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public AnnotationVisitor visitArray(String str) {
        this.numElementValuePairs++;
        if (this.useNamedValues) {
            this.annotation.putShort(this.symbolTable.m14844r(str));
        }
        this.annotation.m14915d(91, 0);
        return new AnnotationWriter(this.symbolTable, false, this.annotation, null);
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public void visitEnd() {
        int i = this.numElementValuePairsOffset;
        if (i != -1) {
            byte[] bArr = this.annotation.f19173a;
            int i2 = this.numElementValuePairs;
            bArr[i] = (byte) (i2 >>> 8);
            bArr[i + 1] = (byte) i2;
        }
    }

    @Override // net.bytebuddy.jar.asm.AnnotationVisitor
    public void visitEnum(String str, String str2, String str3) {
        this.numElementValuePairs++;
        if (this.useNamedValues) {
            this.annotation.putShort(this.symbolTable.m14844r(str));
        }
        this.annotation.m14915d(101, this.symbolTable.m14844r(str2)).putShort(this.symbolTable.m14844r(str3));
    }
}
