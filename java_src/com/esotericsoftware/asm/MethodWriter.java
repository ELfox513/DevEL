package com.esotericsoftware.asm;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import com.badlogic.gdx.net.HttpStatus;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.luaj.lib.jse.JseOsLib;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.pool.TypePool;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MethodWriter extends MethodVisitor {

    /* renamed from: A */
    public int[] f7108A;

    /* renamed from: B */
    public int[] f7109B;

    /* renamed from: C */
    public int f7110C;

    /* renamed from: D */
    public Handler f7111D;

    /* renamed from: E */
    public Handler f7112E;

    /* renamed from: F */
    public int f7113F;

    /* renamed from: G */
    public ByteVector f7114G;

    /* renamed from: H */
    public int f7115H;

    /* renamed from: I */
    public ByteVector f7116I;

    /* renamed from: J */
    public int f7117J;

    /* renamed from: K */
    public ByteVector f7118K;

    /* renamed from: L */
    public int f7119L;

    /* renamed from: M */
    public ByteVector f7120M;

    /* renamed from: N */
    public int f7121N;

    /* renamed from: O */
    public AnnotationWriter f7122O;

    /* renamed from: P */
    public AnnotationWriter f7123P;

    /* renamed from: Q */
    public Attribute f7124Q;

    /* renamed from: R */
    public boolean f7125R;

    /* renamed from: S */
    public int f7126S;

    /* renamed from: T */
    public final int f7127T;

    /* renamed from: U */
    public Label f7128U;

    /* renamed from: V */
    public Label f7129V;

    /* renamed from: W */
    public Label f7130W;

    /* renamed from: X */
    public int f7131X;

    /* renamed from: Y */
    public int f7132Y;

    /* renamed from: a */
    public final ClassWriter f7133a;

    /* renamed from: b */
    public int f7134b;

    /* renamed from: c */
    public final int f7135c;

    /* renamed from: d */
    public final int f7136d;

    /* renamed from: e */
    public final String f7137e;

    /* renamed from: f */
    public String f7138f;

    /* renamed from: g */
    public int f7139g;

    /* renamed from: h */
    public int f7140h;

    /* renamed from: i */
    public int f7141i;

    /* renamed from: j */
    public int[] f7142j;

    /* renamed from: k */
    public ByteVector f7143k;

    /* renamed from: l */
    public AnnotationWriter f7144l;

    /* renamed from: m */
    public AnnotationWriter f7145m;

    /* renamed from: n */
    public AnnotationWriter f7146n;

    /* renamed from: o */
    public AnnotationWriter f7147o;

    /* renamed from: p */
    public AnnotationWriter[] f7148p;

    /* renamed from: q */
    public AnnotationWriter[] f7149q;

    /* renamed from: r */
    public int f7150r;

    /* renamed from: s */
    public Attribute f7151s;

    /* renamed from: t */
    public ByteVector f7152t;

    /* renamed from: u */
    public int f7153u;

    /* renamed from: v */
    public int f7154v;

    /* renamed from: w */
    public int f7155w;

    /* renamed from: x */
    public int f7156x;

    /* renamed from: y */
    public ByteVector f7157y;

    /* renamed from: z */
    public int f7158z;

    public MethodWriter(ClassWriter classWriter, int i, String str, String str2, String str3, String[] strArr, boolean z, boolean z2) {
        super(327680);
        this.f7152t = new ByteVector();
        if (classWriter.f7001I == null) {
            classWriter.f7001I = this;
        } else {
            classWriter.f7002J.f7107mv = this;
        }
        classWriter.f7002J = this;
        this.f7133a = classWriter;
        this.f7134b = i;
        if (MethodDescription.CONSTRUCTOR_INTERNAL_NAME.equals(str)) {
            this.f7134b |= net.bytebuddy.jar.asm.Opcodes.ASM8;
        }
        this.f7135c = classWriter.newUTF8(str);
        this.f7136d = classWriter.newUTF8(str2);
        this.f7137e = str2;
        this.f7138f = str3;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.f7141i = length;
            this.f7142j = new int[length];
            for (int i2 = 0; i2 < this.f7141i; i2++) {
                this.f7142j[i2] = classWriter.newClass(strArr[i2]);
            }
        }
        this.f7127T = z2 ? 0 : z ? 1 : 2;
        if (z || z2) {
            int argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(this.f7137e) >> 2;
            argumentsAndReturnSizes = (i & 8) != 0 ? argumentsAndReturnSizes - 1 : argumentsAndReturnSizes;
            this.f7154v = argumentsAndReturnSizes;
            this.f7155w = argumentsAndReturnSizes;
            Label label = new Label();
            this.f7128U = label;
            label.f7096a |= 8;
            visitLabel(label);
        }
    }

    /* renamed from: c */
    public static int m23345c(byte[] bArr, int i) {
        return (bArr[i + 3] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 24) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 16) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: d */
    public static int m23344d(int[] iArr, int[] iArr2, int i, int i2) {
        int i3 = i2 - i;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            int i5 = iArr[i4];
            if (i < i5 && i5 <= i2) {
                i3 += iArr2[i4];
            } else if (i2 < i5 && i5 <= i) {
                i3 -= iArr2[i4];
            }
        }
        return i3;
    }

    /* renamed from: j */
    public static void m23338j(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >>> 8);
        bArr[i + 1] = (byte) i2;
    }

    /* renamed from: k */
    public static void m23337k(int[] iArr, int[] iArr2, Label label) {
        if ((label.f7096a & 4) == 0) {
            label.f7098c = m23344d(iArr, iArr2, 0, label.f7098c);
            label.f7096a |= 4;
        }
    }

    /* renamed from: l */
    public static short m23336l(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 8));
    }

    /* renamed from: o */
    public static int m23333o(byte[] bArr, int i) {
        return (bArr[i + 1] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: a */
    public final int m23347a() {
        int i;
        if (this.f7139g != 0) {
            return this.f7140h + 6;
        }
        int i2 = this.f7152t.f6986b;
        if (i2 <= 0) {
            i = 8;
        } else if (i2 > 65535) {
            throw new RuntimeException("Method code too large!");
        } else {
            this.f7133a.newUTF8("Code");
            i = this.f7152t.f6986b + 18 + (this.f7110C * 8) + 8;
            if (this.f7116I != null) {
                this.f7133a.newUTF8("LocalVariableTable");
                i += this.f7116I.f6986b + 8;
            }
            if (this.f7118K != null) {
                this.f7133a.newUTF8("LocalVariableTypeTable");
                i += this.f7118K.f6986b + 8;
            }
            if (this.f7120M != null) {
                this.f7133a.newUTF8("LineNumberTable");
                i += this.f7120M.f6986b + 8;
            }
            if (this.f7157y != null) {
                ClassWriter classWriter = this.f7133a;
                classWriter.newUTF8((classWriter.f7007b & MeshBuilder.MAX_INDEX) >= 50 ? "StackMapTable" : "StackMap");
                i += this.f7157y.f6986b + 8;
            }
            if (this.f7122O != null) {
                this.f7133a.newUTF8("RuntimeVisibleTypeAnnotations");
                i += this.f7122O.m23431a() + 8;
            }
            if (this.f7123P != null) {
                this.f7133a.newUTF8("RuntimeInvisibleTypeAnnotations");
                i += this.f7123P.m23431a() + 8;
            }
            Attribute attribute = this.f7124Q;
            if (attribute != null) {
                ClassWriter classWriter2 = this.f7133a;
                ByteVector byteVector = this.f7152t;
                i += attribute.m23426b(classWriter2, byteVector.f6985a, byteVector.f6986b, this.f7153u, this.f7154v);
            }
        }
        if (this.f7141i > 0) {
            this.f7133a.newUTF8("Exceptions");
            i += (this.f7141i * 2) + 8;
        }
        int i3 = this.f7134b;
        if ((i3 & 4096) != 0) {
            ClassWriter classWriter3 = this.f7133a;
            if ((65535 & classWriter3.f7007b) < 49 || (262144 & i3) != 0) {
                classWriter3.newUTF8("Synthetic");
                i += 6;
            }
        }
        if ((this.f7134b & 131072) != 0) {
            this.f7133a.newUTF8("Deprecated");
            i += 6;
        }
        if (this.f7138f != null) {
            this.f7133a.newUTF8("Signature");
            this.f7133a.newUTF8(this.f7138f);
            i += 8;
        }
        if (this.f7114G != null) {
            this.f7133a.newUTF8("MethodParameters");
            i += this.f7114G.f6986b + 7;
        }
        if (this.f7143k != null) {
            this.f7133a.newUTF8("AnnotationDefault");
            i += this.f7143k.f6986b + 6;
        }
        if (this.f7144l != null) {
            this.f7133a.newUTF8("RuntimeVisibleAnnotations");
            i += this.f7144l.m23431a() + 8;
        }
        if (this.f7145m != null) {
            this.f7133a.newUTF8("RuntimeInvisibleAnnotations");
            i += this.f7145m.m23431a() + 8;
        }
        if (this.f7146n != null) {
            this.f7133a.newUTF8("RuntimeVisibleTypeAnnotations");
            i += this.f7146n.m23431a() + 8;
        }
        if (this.f7147o != null) {
            this.f7133a.newUTF8("RuntimeInvisibleTypeAnnotations");
            i += this.f7147o.m23431a() + 8;
        }
        if (this.f7148p != null) {
            this.f7133a.newUTF8("RuntimeVisibleParameterAnnotations");
            AnnotationWriter[] annotationWriterArr = this.f7148p;
            i += ((annotationWriterArr.length - this.f7150r) * 2) + 7;
            for (int length = annotationWriterArr.length - 1; length >= this.f7150r; length--) {
                AnnotationWriter annotationWriter = this.f7148p[length];
                i += annotationWriter == null ? 0 : annotationWriter.m23431a();
            }
        }
        if (this.f7149q != null) {
            this.f7133a.newUTF8("RuntimeInvisibleParameterAnnotations");
            AnnotationWriter[] annotationWriterArr2 = this.f7149q;
            i += ((annotationWriterArr2.length - this.f7150r) * 2) + 7;
            for (int length2 = annotationWriterArr2.length - 1; length2 >= this.f7150r; length2--) {
                AnnotationWriter annotationWriter2 = this.f7149q[length2];
                i += annotationWriter2 == null ? 0 : annotationWriter2.m23431a();
            }
        }
        Attribute attribute2 = this.f7151s;
        return attribute2 != null ? i + attribute2.m23426b(this.f7133a, null, 0, -1, -1) : i;
    }

    /* renamed from: b */
    public final int m23346b(int i, int i2, int i3) {
        int i4 = i2 + 3 + i3;
        int[] iArr = this.f7109B;
        if (iArr == null || iArr.length < i4) {
            this.f7109B = new int[i4];
        }
        int[] iArr2 = this.f7109B;
        iArr2[0] = i;
        iArr2[1] = i2;
        iArr2[2] = i3;
        return 3;
    }

    /* renamed from: e */
    public final void m23343e(int i, int i2) {
        char c;
        ByteVector putByte;
        int newClass;
        while (i < i2) {
            int i3 = this.f7109B[i];
            int i4 = (-268435456) & i3;
            if (i4 == 0) {
                int i5 = i3 & 1048575;
                int i6 = i3 & 267386880;
                if (i6 == 24117248) {
                    putByte = this.f7157y.putByte(7);
                    ClassWriter classWriter = this.f7133a;
                    newClass = classWriter.newClass(classWriter.f7016k[i5].f7091e);
                } else if (i6 != 25165824) {
                    this.f7157y.putByte(i5);
                    i++;
                } else {
                    putByte = this.f7157y.putByte(8);
                    newClass = this.f7133a.f7016k[i5].f7089c;
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                int i7 = i4 >> 28;
                while (true) {
                    int i8 = i7 - 1;
                    if (i7 > 0) {
                        stringBuffer.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
                        i7 = i8;
                    } else {
                        if ((i3 & 267386880) == 24117248) {
                            stringBuffer.append('L');
                            stringBuffer.append(this.f7133a.f7016k[i3 & 1048575].f7091e);
                            c = TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER;
                        } else {
                            int i9 = i3 & 15;
                            if (i9 == 1) {
                                c = 'I';
                            } else if (i9 == 2) {
                                c = 'F';
                            } else if (i9 != 3) {
                                switch (i9) {
                                    case 9:
                                        c = 'Z';
                                        break;
                                    case 10:
                                        c = 'B';
                                        break;
                                    case 11:
                                        c = 'C';
                                        break;
                                    case 12:
                                        c = 'S';
                                        break;
                                    default:
                                        c = 'J';
                                        break;
                                }
                            } else {
                                c = 'D';
                            }
                        }
                        stringBuffer.append(c);
                        putByte = this.f7157y.putByte(7);
                        newClass = this.f7133a.newClass(stringBuffer.toString());
                    }
                }
            }
            putByte.putShort(newClass);
            i++;
        }
    }

    /* renamed from: f */
    public final void m23342f(int i, Label label) {
        Edge edge = new Edge();
        edge.f7052a = i;
        edge.f7053b = label;
        Label label2 = this.f7130W;
        edge.f7054c = label2.f7105j;
        label2.f7105j = edge;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:181:? A[RETURN, SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23341g(com.esotericsoftware.asm.ByteVector r23) {
        /*
            Method dump skipped, instructions count: 973
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.MethodWriter.m23341g(com.esotericsoftware.asm.ByteVector):void");
    }

    /* renamed from: h */
    public final void m23340h(Label label, Label[] labelArr) {
        Label label2 = this.f7130W;
        if (label2 != null) {
            if (this.f7127T == 0) {
                label2.f7103h.m23374f(171, 0, null, null);
                m23342f(0, label);
                label.m23355a().f7096a |= 16;
                for (int i = 0; i < labelArr.length; i++) {
                    m23342f(0, labelArr[i]);
                    labelArr[i].m23355a().f7096a |= 16;
                }
            } else {
                int i2 = this.f7131X - 1;
                this.f7131X = i2;
                m23342f(i2, label);
                for (Label label3 : labelArr) {
                    m23342f(this.f7131X, label3);
                }
            }
            m23330r();
        }
    }

    /* renamed from: i */
    public final void m23339i(Object obj) {
        ByteVector putByte;
        int i;
        if (obj instanceof String) {
            putByte = this.f7157y.putByte(7);
            i = this.f7133a.newClass((String) obj);
        } else if (obj instanceof Integer) {
            this.f7157y.putByte(((Integer) obj).intValue());
            return;
        } else {
            putByte = this.f7157y.putByte(8);
            i = ((Label) obj).f7098c;
        }
        putByte.putShort(i);
    }

    /* renamed from: m */
    public final void m23335m() {
        if (this.f7108A != null) {
            if (this.f7157y == null) {
                this.f7157y = new ByteVector();
            }
            m23332p();
            this.f7156x++;
        }
        this.f7108A = this.f7109B;
        this.f7109B = null;
    }

    /* renamed from: n */
    public final void m23334n(Frame frame) {
        int[] iArr = frame.f7069b;
        int[] iArr2 = frame.f7070c;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < iArr.length) {
            int i5 = iArr[i2];
            i4++;
            if (i5 != 16777216) {
                i3 += i4;
                i4 = 0;
            }
            if (i5 == 16777220 || i5 == 16777219) {
                i2++;
            }
            i2++;
        }
        int i6 = 0;
        int i7 = 0;
        while (i6 < iArr2.length) {
            int i8 = iArr2[i6];
            i7++;
            if (i8 == 16777220 || i8 == 16777219) {
                i6++;
            }
            i6++;
        }
        int m23346b = m23346b(frame.f7068a.f7098c, i3, i7);
        int i9 = 0;
        while (i3 > 0) {
            int i10 = iArr[i9];
            int i11 = m23346b + 1;
            this.f7109B[m23346b] = i10;
            if (i10 == 16777220 || i10 == 16777219) {
                i9++;
            }
            i9++;
            i3--;
            m23346b = i11;
        }
        while (i < iArr2.length) {
            int i12 = iArr2[i];
            int i13 = m23346b + 1;
            this.f7109B[m23346b] = i12;
            if (i12 == 16777220 || i12 == 16777219) {
                i++;
            }
            i++;
            m23346b = i13;
        }
        m23335m();
    }

    /* renamed from: p */
    public final void m23332p() {
        int i;
        char c;
        ByteVector putByte;
        int[] iArr = this.f7109B;
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = 0;
        if ((this.f7133a.f7007b & MeshBuilder.MAX_INDEX) < 50) {
            this.f7157y.putShort(iArr[0]).putShort(i2);
            int i5 = i2 + 3;
            m23343e(3, i5);
            this.f7157y.putShort(i3);
            m23343e(i5, i3 + i5);
            return;
        }
        int[] iArr2 = this.f7108A;
        int i6 = iArr2[1];
        int i7 = this.f7156x == 0 ? iArr[0] : (iArr[0] - iArr2[0]) - 1;
        if (i3 == 0) {
            i = i2 - i6;
            switch (i) {
                case JseOsLib.EXEC_ERROR /* -3 */:
                case -2:
                case -1:
                    i6 = i2;
                    c = 248;
                    break;
                case 0:
                    if (i7 >= 64) {
                        c = 251;
                        break;
                    } else {
                        c = 0;
                        break;
                    }
                case 1:
                case 2:
                case 3:
                    c = 252;
                    break;
                default:
                    c = 255;
                    break;
            }
        } else if (i2 == i6 && i3 == 1) {
            c = i7 < 63 ? '@' : (char) 247;
            i = 0;
        } else {
            i = 0;
            c = 255;
        }
        if (c != 255) {
            int i8 = 3;
            while (true) {
                if (i4 < i6) {
                    if (this.f7109B[i8] != this.f7108A[i8]) {
                        c = 255;
                    } else {
                        i8++;
                        i4++;
                    }
                }
            }
        }
        if (c == 0) {
            this.f7157y.putByte(i7);
            return;
        }
        if (c == '@') {
            this.f7157y.putByte(i7 + 64);
        } else if (c != 247) {
            if (c == 248) {
                putByte = this.f7157y.putByte(i + 251);
            } else if (c != 251) {
                if (c == 252) {
                    this.f7157y.putByte(i + 251).putShort(i7);
                    m23343e(i6 + 3, i2 + 3);
                    return;
                }
                this.f7157y.putByte(255).putShort(i7).putShort(i2);
                int i9 = i2 + 3;
                m23343e(3, i9);
                this.f7157y.putShort(i3);
                m23343e(i9, i3 + i9);
                return;
            } else {
                putByte = this.f7157y.putByte(251);
            }
            putByte.putShort(i7);
            return;
        } else {
            this.f7157y.putByte(247).putShort(i7);
        }
        m23343e(i2 + 3, i2 + 4);
    }

    /* renamed from: q */
    public final void m23331q() {
        int i;
        char c;
        int m23336l;
        int i2;
        int m23336l2;
        int i3;
        int i4;
        ByteVector byteVector = this.f7152t;
        byte[] bArr = byteVector.f6985a;
        int[] iArr = new int[0];
        int[] iArr2 = new int[0];
        boolean[] zArr = new boolean[byteVector.f6986b];
        int i5 = 3;
        do {
            if (i5 == 3) {
                i5 = 2;
            }
            int i6 = 0;
            while (true) {
                i = 218;
                c = 132;
                if (i6 < bArr.length) {
                    int i7 = bArr[i6] & DefaultClassResolver.NAME;
                    switch (ClassWriter.f6992N[i7]) {
                        case 0:
                        case 4:
                            i6++;
                            i3 = 0;
                            break;
                        case 1:
                        case 3:
                        case 11:
                            i6 += 2;
                            i3 = 0;
                            break;
                        case 2:
                        case 5:
                        case 6:
                        case 12:
                        case 13:
                            i6 += 3;
                            i3 = 0;
                            break;
                        case 7:
                        case 8:
                        case 10:
                            i6 += 5;
                            i3 = 0;
                            break;
                        case 9:
                            if (i7 > 201) {
                                i7 = i7 < 218 ? i7 - 49 : i7 - 20;
                                m23336l2 = m23333o(bArr, i6 + 1);
                            } else {
                                m23336l2 = m23336l(bArr, i6 + 1);
                            }
                            int m23344d = m23344d(iArr, iArr2, i6, m23336l2 + i6);
                            if ((m23344d < -32768 || m23344d > 32767) && !zArr[i6]) {
                                int i8 = (i7 == 167 || i7 == 168) ? 2 : 5;
                                zArr[i6] = true;
                                i3 = i8;
                            } else {
                                i3 = 0;
                            }
                            i6 += 3;
                            break;
                        case 14:
                            if (i5 == 1) {
                                i4 = -(m23344d(iArr, iArr2, 0, i6) & 3);
                            } else if (zArr[i6]) {
                                i3 = 0;
                                int i9 = (i6 + 4) - (i6 & 3);
                                i6 = i9 + (((m23345c(bArr, i9 + 8) - m23345c(bArr, i9 + 4)) + 1) * 4) + 12;
                                break;
                            } else {
                                i4 = i6 & 3;
                                zArr[i6] = true;
                            }
                            i3 = i4;
                            int i92 = (i6 + 4) - (i6 & 3);
                            i6 = i92 + (((m23345c(bArr, i92 + 8) - m23345c(bArr, i92 + 4)) + 1) * 4) + 12;
                        case 15:
                            if (i5 == 1) {
                                i3 = -(m23344d(iArr, iArr2, 0, i6) & 3);
                            } else if (zArr[i6]) {
                                i3 = 0;
                            } else {
                                i3 = i6 & 3;
                                zArr[i6] = true;
                            }
                            int i10 = (i6 + 4) - (i6 & 3);
                            i6 = i10 + (m23345c(bArr, i10 + 4) * 8) + 8;
                            break;
                        case 17:
                            if ((bArr[i6 + 1] & DefaultClassResolver.NAME) == 132) {
                                i6 += 6;
                                i3 = 0;
                                break;
                            }
                        case 16:
                        default:
                            i6 += 4;
                            i3 = 0;
                            break;
                    }
                    if (i3 != 0) {
                        int[] iArr3 = new int[iArr.length + 1];
                        int[] iArr4 = new int[iArr2.length + 1];
                        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                        System.arraycopy(iArr2, 0, iArr4, 0, iArr2.length);
                        iArr3[iArr.length] = i6;
                        iArr4[iArr2.length] = i3;
                        iArr = iArr3;
                        iArr2 = iArr4;
                        if (i3 > 0) {
                            i5 = 3;
                        }
                    }
                } else if (i5 < 3) {
                    i5--;
                    continue;
                }
            }
        } while (i5 != 0);
        ByteVector byteVector2 = new ByteVector(this.f7152t.f6986b);
        int i11 = 0;
        while (i11 < this.f7152t.f6986b) {
            int i12 = bArr[i11] & DefaultClassResolver.NAME;
            switch (ClassWriter.f6992N[i12]) {
                case 0:
                case 4:
                    byteVector2.putByte(i12);
                    i11++;
                    continue;
                    i = 218;
                    c = 132;
                case 1:
                case 3:
                case 11:
                    byteVector2.putByteArray(bArr, i11, 2);
                    i11 += 2;
                    continue;
                    i = 218;
                    c = 132;
                case 2:
                case 5:
                case 6:
                case 12:
                case 13:
                    byteVector2.putByteArray(bArr, i11, 3);
                    i11 += 3;
                    continue;
                    i = 218;
                    c = 132;
                case 7:
                case 8:
                    byteVector2.putByteArray(bArr, i11, 5);
                    i11 += 5;
                    continue;
                    i = 218;
                    c = 132;
                case 9:
                    if (i12 > 201) {
                        i12 = i12 < i ? i12 - 49 : i12 - 20;
                        m23336l = m23333o(bArr, i11 + 1);
                    } else {
                        m23336l = m23336l(bArr, i11 + 1);
                    }
                    int m23344d2 = m23344d(iArr, iArr2, i11, m23336l + i11);
                    if (zArr[i11]) {
                        if (i12 == 167) {
                            byteVector2.putByte(HttpStatus.SC_OK);
                        } else if (i12 == 168) {
                            byteVector2.putByte(HttpStatus.SC_CREATED);
                        } else {
                            byteVector2.putByte(i12 <= 166 ? ((i12 + 1) ^ 1) - 1 : i12 ^ 1);
                            byteVector2.putShort(8);
                            byteVector2.putByte(HttpStatus.SC_OK);
                            m23344d2 -= 3;
                        }
                        byteVector2.putInt(m23344d2);
                    } else {
                        byteVector2.putByte(i12);
                        byteVector2.putShort(m23344d2);
                    }
                    i11 += 3;
                    break;
                case 10:
                    int m23344d3 = m23344d(iArr, iArr2, i11, m23345c(bArr, i11 + 1) + i11);
                    byteVector2.putByte(i12);
                    byteVector2.putInt(m23344d3);
                    i11 += 5;
                    break;
                case 14:
                    int i13 = (i11 + 4) - (i11 & 3);
                    byteVector2.putByte(170);
                    byteVector2.putByteArray(null, 0, (4 - (byteVector2.f6986b % 4)) % 4);
                    int i14 = i13 + 4;
                    byteVector2.putInt(m23344d(iArr, iArr2, i11, m23345c(bArr, i13) + i11));
                    int m23345c = m23345c(bArr, i14);
                    int i15 = i14 + 4;
                    byteVector2.putInt(m23345c);
                    i2 = i15 + 4;
                    byteVector2.putInt(m23345c(bArr, i2 - 4));
                    for (int m23345c2 = (m23345c(bArr, i15) - m23345c) + 1; m23345c2 > 0; m23345c2--) {
                        i2 += 4;
                        byteVector2.putInt(m23344d(iArr, iArr2, i11, m23345c(bArr, i2) + i11));
                    }
                    i11 = i2;
                    break;
                case 15:
                    int i16 = (i11 + 4) - (i11 & 3);
                    byteVector2.putByte(171);
                    byteVector2.putByteArray(null, 0, (4 - (byteVector2.f6986b % 4)) % 4);
                    int i17 = i16 + 4;
                    byteVector2.putInt(m23344d(iArr, iArr2, i11, m23345c(bArr, i16) + i11));
                    int m23345c3 = m23345c(bArr, i17);
                    i2 = i17 + 4;
                    byteVector2.putInt(m23345c3);
                    while (m23345c3 > 0) {
                        byteVector2.putInt(m23345c(bArr, i2));
                        int i18 = i2 + 4;
                        i2 = i18 + 4;
                        byteVector2.putInt(m23344d(iArr, iArr2, i11, m23345c(bArr, i18) + i11));
                        m23345c3--;
                    }
                    i11 = i2;
                    break;
                case 16:
                default:
                    byteVector2.putByteArray(bArr, i11, 4);
                    i11 += 4;
                    continue;
                    i = 218;
                    c = 132;
                case 17:
                    if ((bArr[i11 + 1] & DefaultClassResolver.NAME) == c) {
                        byteVector2.putByteArray(bArr, i11, 6);
                        i11 += 6;
                        break;
                    } else {
                        byteVector2.putByteArray(bArr, i11, 4);
                        i11 += 4;
                        break;
                    }
            }
            i = 218;
            c = 132;
        }
        if (this.f7127T == 0) {
            for (Label label = this.f7128U; label != null; label = label.f7104i) {
                int i19 = label.f7098c - 3;
                if (i19 >= 0 && zArr[i19]) {
                    label.f7096a |= 16;
                }
                m23337k(iArr, iArr2, label);
            }
            if (this.f7133a.f7016k != null) {
                int i20 = 0;
                while (true) {
                    Item[] itemArr = this.f7133a.f7016k;
                    if (i20 < itemArr.length) {
                        Item item = itemArr[i20];
                        if (item != null && item.f7088b == 31) {
                            item.f7089c = m23344d(iArr, iArr2, 0, item.f7089c);
                        }
                        i20++;
                    }
                }
            }
        } else if (this.f7156x > 0) {
            this.f7133a.f7005M = true;
        }
        for (Handler handler = this.f7111D; handler != null; handler = handler.f7086f) {
            m23337k(iArr, iArr2, handler.f7081a);
            m23337k(iArr, iArr2, handler.f7082b);
            m23337k(iArr, iArr2, handler.f7083c);
        }
        int i21 = 0;
        while (i21 < 2) {
            ByteVector byteVector3 = i21 == 0 ? this.f7116I : this.f7118K;
            if (byteVector3 != null) {
                byte[] bArr2 = byteVector3.f6985a;
                for (int i22 = 0; i22 < byteVector3.f6986b; i22 += 10) {
                    int m23333o = m23333o(bArr2, i22);
                    int m23344d4 = m23344d(iArr, iArr2, 0, m23333o);
                    m23338j(bArr2, i22, m23344d4);
                    int i23 = i22 + 2;
                    m23338j(bArr2, i23, m23344d(iArr, iArr2, 0, m23333o + m23333o(bArr2, i23)) - m23344d4);
                }
            }
            i21++;
        }
        ByteVector byteVector4 = this.f7120M;
        if (byteVector4 != null) {
            byte[] bArr3 = byteVector4.f6985a;
            for (int i24 = 0; i24 < this.f7120M.f6986b; i24 += 4) {
                m23338j(bArr3, i24, m23344d(iArr, iArr2, 0, m23333o(bArr3, i24)));
            }
        }
        for (Attribute attribute = this.f7124Q; attribute != null; attribute = attribute.f6984b) {
            Label[] labels = attribute.getLabels();
            if (labels != null) {
                for (int length = labels.length - 1; length >= 0; length--) {
                    m23337k(iArr, iArr2, labels[length]);
                }
            }
        }
        this.f7152t = byteVector2;
    }

    /* renamed from: r */
    public final void m23330r() {
        if (this.f7127T == 0) {
            Label label = new Label();
            Frame frame = new Frame();
            label.f7103h = frame;
            frame.f7068a = label;
            ByteVector byteVector = this.f7152t;
            label.m23349g(this, byteVector.f6986b, byteVector.f6985a);
            this.f7129V.f7104i = label;
            this.f7129V = label;
        } else {
            this.f7130W.f7102g = this.f7132Y;
        }
        this.f7130W = null;
    }

    /* renamed from: s */
    public final void m23329s() {
        int i;
        int i2;
        int i3;
        int m23346b = m23346b(0, this.f7137e.length() + 1, 0);
        int i4 = this.f7134b;
        if ((i4 & 8) == 0) {
            if ((i4 & net.bytebuddy.jar.asm.Opcodes.ASM8) == 0) {
                int[] iArr = this.f7109B;
                i3 = m23346b + 1;
                ClassWriter classWriter = this.f7133a;
                iArr[m23346b] = classWriter.m23384t(classWriter.f7020o) | 24117248;
            } else {
                i3 = m23346b + 1;
                this.f7109B[m23346b] = 6;
            }
            m23346b = i3;
        }
        int i5 = 1;
        while (true) {
            int i6 = i5 + 1;
            char charAt = this.f7137e.charAt(i5);
            if (charAt == 'F') {
                i = m23346b + 1;
                this.f7109B[m23346b] = 2;
            } else if (charAt != 'L') {
                if (charAt != 'S' && charAt != 'I') {
                    if (charAt == 'J') {
                        i = m23346b + 1;
                        this.f7109B[m23346b] = 4;
                    } else if (charAt != 'Z') {
                        if (charAt != '[') {
                            switch (charAt) {
                                case 'B':
                                case 'C':
                                    break;
                                case 'D':
                                    i2 = m23346b + 1;
                                    this.f7109B[m23346b] = 3;
                                    break;
                                default:
                                    this.f7109B[1] = m23346b - 3;
                                    m23335m();
                                    return;
                            }
                        } else {
                            while (this.f7137e.charAt(i6) == '[') {
                                i6++;
                            }
                            if (this.f7137e.charAt(i6) == 'L') {
                                do {
                                    i6++;
                                } while (this.f7137e.charAt(i6) != ';');
                                i2 = m23346b + 1;
                                i6++;
                                this.f7109B[m23346b] = this.f7133a.m23384t(this.f7137e.substring(i5, i6)) | 24117248;
                            } else {
                                i2 = m23346b + 1;
                                i6++;
                                this.f7109B[m23346b] = this.f7133a.m23384t(this.f7137e.substring(i5, i6)) | 24117248;
                            }
                        }
                        i5 = i6;
                        m23346b = i2;
                    }
                }
                i = m23346b + 1;
                this.f7109B[m23346b] = 1;
            } else {
                int i7 = i6;
                while (this.f7137e.charAt(i7) != ';') {
                    i7++;
                }
                this.f7109B[m23346b] = this.f7133a.m23384t(this.f7137e.substring(i6, i7)) | 24117248;
                m23346b++;
                i5 = i7 + 1;
            }
            m23346b = i;
            i5 = i6;
        }
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public AnnotationVisitor visitAnnotation(String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        byteVector.putShort(this.f7133a.newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this.f7133a, true, byteVector, byteVector, 2);
        if (z) {
            annotationWriter.f6981g = this.f7144l;
            this.f7144l = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f7145m;
            this.f7145m = annotationWriter;
        }
        return annotationWriter;
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public AnnotationVisitor visitAnnotationDefault() {
        ByteVector byteVector = new ByteVector();
        this.f7143k = byteVector;
        return new AnnotationWriter(this.f7133a, false, byteVector, null, 0);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitAttribute(Attribute attribute) {
        if (attribute.isCodeAttribute()) {
            attribute.f6984b = this.f7124Q;
            this.f7124Q = attribute;
            return;
        }
        attribute.f6984b = this.f7151s;
        this.f7151s = attribute;
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitCode() {
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitEnd() {
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitFieldInsn(int i, String str, String str2, String str3) {
        int i2;
        int i3;
        this.f7121N = this.f7152t.f6986b;
        Item m23390n = this.f7133a.m23390n(str, str2, str3);
        Label label = this.f7130W;
        if (label != null) {
            int i4 = 0;
            if (this.f7127T == 0) {
                label.f7103h.m23374f(i, 0, this.f7133a, m23390n);
            } else {
                char charAt = str3.charAt(0);
                int i5 = 1;
                int i6 = -2;
                switch (i) {
                    case 178:
                        i2 = this.f7131X + ((charAt == 'D' || charAt == 'J') ? 2 : 2);
                        break;
                    case 179:
                        i3 = this.f7131X;
                        if (charAt != 'D' && charAt != 'J') {
                            i6 = -1;
                        }
                        i2 = i6 + i3;
                        break;
                    case 180:
                        i2 = this.f7131X + ((charAt == 'D' || charAt == 'J') ? 1 : 1);
                        break;
                    default:
                        i3 = this.f7131X;
                        if (charAt == 'D' || charAt == 'J') {
                            i6 = -3;
                        }
                        i2 = i6 + i3;
                        break;
                }
                if (i2 > this.f7132Y) {
                    this.f7132Y = i2;
                }
                this.f7131X = i2;
            }
        }
        this.f7152t.m23422c(i, m23390n.f7087a);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitFrame(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        int i4;
        ByteVector byteVector;
        int i5;
        int i6;
        if (this.f7127T == 0) {
            return;
        }
        int i7 = 0;
        if (i == -1) {
            if (this.f7108A == null) {
                m23329s();
            }
            this.f7155w = i2;
            int m23346b = m23346b(this.f7152t.f6986b, i2, i3);
            for (int i8 = 0; i8 < i2; i8++) {
                Object obj = objArr[i8];
                if (obj instanceof String) {
                    i6 = m23346b + 1;
                    this.f7109B[m23346b] = 24117248 | this.f7133a.m23384t((String) obj);
                } else if (obj instanceof Integer) {
                    i6 = m23346b + 1;
                    this.f7109B[m23346b] = ((Integer) obj).intValue();
                } else {
                    this.f7109B[m23346b] = this.f7133a.m23401c("", ((Label) obj).f7098c) | 25165824;
                    m23346b++;
                }
                m23346b = i6;
            }
            while (i7 < i3) {
                Object obj2 = objArr2[i7];
                if (obj2 instanceof String) {
                    i5 = m23346b + 1;
                    this.f7109B[m23346b] = this.f7133a.m23384t((String) obj2) | 24117248;
                } else if (obj2 instanceof Integer) {
                    i5 = m23346b + 1;
                    this.f7109B[m23346b] = ((Integer) obj2).intValue();
                } else {
                    i5 = m23346b + 1;
                    this.f7109B[m23346b] = this.f7133a.m23401c("", ((Label) obj2).f7098c) | 25165824;
                }
                m23346b = i5;
                i7++;
            }
            m23335m();
        } else {
            if (this.f7157y == null) {
                this.f7157y = new ByteVector();
                i4 = this.f7152t.f6986b;
            } else {
                i4 = (this.f7152t.f6986b - this.f7158z) - 1;
                if (i4 < 0) {
                    if (i != 3) {
                        throw new IllegalStateException();
                    }
                    return;
                }
            }
            if (i == 0) {
                this.f7155w = i2;
                this.f7157y.putByte(255).putShort(i4).putShort(i2);
                for (int i9 = 0; i9 < i2; i9++) {
                    m23339i(objArr[i9]);
                }
                this.f7157y.putShort(i3);
                while (i7 < i3) {
                    m23339i(objArr2[i7]);
                    i7++;
                }
            } else if (i != 1) {
                int i10 = 251;
                if (i == 2) {
                    this.f7155w -= i2;
                    byteVector = this.f7157y;
                    i10 = 251 - i2;
                } else if (i == 3) {
                    byteVector = this.f7157y;
                    if (i4 < 64) {
                        byteVector.putByte(i4);
                    }
                } else if (i == 4) {
                    ByteVector byteVector2 = this.f7157y;
                    if (i4 < 64) {
                        byteVector2.putByte(i4 + 64);
                    } else {
                        byteVector2.putByte(247).putShort(i4);
                    }
                    m23339i(objArr2[0]);
                }
                byteVector.putByte(i10).putShort(i4);
            } else {
                this.f7155w += i2;
                this.f7157y.putByte(i2 + 251).putShort(i4);
                while (i7 < i2) {
                    m23339i(objArr[i7]);
                    i7++;
                }
            }
            this.f7158z = this.f7152t.f6986b;
            this.f7156x++;
        }
        this.f7153u = Math.max(this.f7153u, i3);
        this.f7154v = Math.max(this.f7154v, this.f7155w);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitIincInsn(int i, int i2) {
        int i3;
        this.f7121N = this.f7152t.f6986b;
        Label label = this.f7130W;
        if (label != null && this.f7127T == 0) {
            label.f7103h.m23374f(132, i, null, null);
        }
        if (this.f7127T != 2 && (i3 = i + 1) > this.f7154v) {
            this.f7154v = i3;
        }
        if (i > 255 || i2 > 127 || i2 < -128) {
            this.f7152t.putByte(196).m23422c(132, i).putShort(i2);
        } else {
            this.f7152t.putByte(132).m23424a(i, i2);
        }
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitInsn(int i) {
        ByteVector byteVector = this.f7152t;
        this.f7121N = byteVector.f6986b;
        byteVector.putByte(i);
        Label label = this.f7130W;
        if (label != null) {
            if (this.f7127T == 0) {
                label.f7103h.m23374f(i, 0, null, null);
            } else {
                int i2 = this.f7131X + Frame.f7067i[i];
                if (i2 > this.f7132Y) {
                    this.f7132Y = i2;
                }
                this.f7131X = i2;
            }
            if ((i < 172 || i > 177) && i != 191) {
                return;
            }
            m23330r();
        }
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public AnnotationVisitor visitInsnAnnotation(int i, TypePath typePath, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        AnnotationWriter.m23430b((i & (-16776961)) | (this.f7121N << 8), typePath, byteVector);
        byteVector.putShort(this.f7133a.newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this.f7133a, true, byteVector, byteVector, byteVector.f6986b - 2);
        if (z) {
            annotationWriter.f6981g = this.f7122O;
            this.f7122O = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f7123P;
            this.f7123P = annotationWriter;
        }
        return annotationWriter;
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitIntInsn(int i, int i2) {
        this.f7121N = this.f7152t.f6986b;
        Label label = this.f7130W;
        if (label != null) {
            if (this.f7127T == 0) {
                label.f7103h.m23374f(i, i2, null, null);
            } else if (i != 188) {
                int i3 = this.f7131X + 1;
                if (i3 > this.f7132Y) {
                    this.f7132Y = i3;
                }
                this.f7131X = i3;
            }
        }
        if (i == 17) {
            this.f7152t.m23422c(i, i2);
        } else {
            this.f7152t.m23424a(i, i2);
        }
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        this.f7121N = this.f7152t.f6986b;
        Item m23391m = this.f7133a.m23391m(str, str2, handle, objArr);
        int i = m23391m.f7089c;
        Label label = this.f7130W;
        if (label != null) {
            if (this.f7127T == 0) {
                label.f7103h.m23374f(186, 0, this.f7133a, m23391m);
            } else {
                if (i == 0) {
                    i = Type.getArgumentsAndReturnSizes(str2);
                    m23391m.f7089c = i;
                }
                int i2 = (this.f7131X - (i >> 2)) + (i & 3) + 1;
                if (i2 > this.f7132Y) {
                    this.f7132Y = i2;
                }
                this.f7131X = i2;
            }
        }
        this.f7152t.m23422c(186, m23391m.f7087a);
        this.f7152t.putShort(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    @Override // com.esotericsoftware.asm.MethodVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitJumpInsn(int r9, com.esotericsoftware.asm.Label r10) {
        /*
            r8 = this;
            com.esotericsoftware.asm.ByteVector r0 = r8.f7152t
            int r0 = r0.f6986b
            r8.f7121N = r0
            com.esotericsoftware.asm.Label r0 = r8.f7130W
            r1 = 168(0xa8, float:2.35E-43)
            r2 = 167(0xa7, float:2.34E-43)
            r3 = 0
            r4 = 0
            r5 = 1
            if (r0 == 0) goto L5e
            int r6 = r8.f7127T
            if (r6 != 0) goto L2f
            com.esotericsoftware.asm.Frame r0 = r0.f7103h
            r0.m23374f(r9, r3, r4, r4)
            com.esotericsoftware.asm.Label r0 = r10.m23355a()
            int r6 = r0.f7096a
            r6 = r6 | 16
            r0.f7096a = r6
            r8.m23342f(r3, r10)
            if (r9 == r2) goto L5e
            com.esotericsoftware.asm.Label r4 = new com.esotericsoftware.asm.Label
            r4.<init>()
            goto L5e
        L2f:
            if (r9 != r1) goto L52
            int r4 = r10.f7096a
            r6 = r4 & 512(0x200, float:7.175E-43)
            if (r6 != 0) goto L40
            r4 = r4 | 512(0x200, float:7.175E-43)
            r10.f7096a = r4
            int r4 = r8.f7126S
            int r4 = r4 + r5
            r8.f7126S = r4
        L40:
            int r4 = r0.f7096a
            r4 = r4 | 128(0x80, float:1.794E-43)
            r0.f7096a = r4
            int r0 = r8.f7131X
            int r0 = r0 + r5
            r8.m23342f(r0, r10)
            com.esotericsoftware.asm.Label r4 = new com.esotericsoftware.asm.Label
            r4.<init>()
            goto L5e
        L52:
            int r0 = r8.f7131X
            int[] r6 = com.esotericsoftware.asm.Frame.f7067i
            r6 = r6[r9]
            int r0 = r0 + r6
            r8.f7131X = r0
            r8.m23342f(r0, r10)
        L5e:
            int r0 = r10.f7096a
            r0 = r0 & 2
            if (r0 == 0) goto La7
            int r0 = r10.f7098c
            com.esotericsoftware.asm.ByteVector r6 = r8.f7152t
            int r7 = r6.f6986b
            int r0 = r0 - r7
            r7 = -32768(0xffffffffffff8000, float:NaN)
            if (r0 >= r7) goto La7
            r0 = 200(0xc8, float:2.8E-43)
            if (r9 != r2) goto L77
        L73:
            r6.putByte(r0)
            goto L9e
        L77:
            if (r9 != r1) goto L7c
            r0 = 201(0xc9, float:2.82E-43)
            goto L73
        L7c:
            if (r4 == 0) goto L84
            int r1 = r4.f7096a
            r1 = r1 | 16
            r4.f7096a = r1
        L84:
            r1 = 166(0xa6, float:2.33E-43)
            if (r9 > r1) goto L8d
            int r1 = r9 + 1
            r1 = r1 ^ r5
            int r1 = r1 - r5
            goto L8f
        L8d:
            r1 = r9 ^ 1
        L8f:
            r6.putByte(r1)
            com.esotericsoftware.asm.ByteVector r1 = r8.f7152t
            r3 = 8
            r1.putShort(r3)
            com.esotericsoftware.asm.ByteVector r1 = r8.f7152t
            r1.putByte(r0)
        L9e:
            com.esotericsoftware.asm.ByteVector r0 = r8.f7152t
            int r1 = r0.f6986b
            int r1 = r1 - r5
            r10.m23352d(r8, r0, r1, r5)
            goto Lb4
        La7:
            com.esotericsoftware.asm.ByteVector r0 = r8.f7152t
            r0.putByte(r9)
            com.esotericsoftware.asm.ByteVector r0 = r8.f7152t
            int r1 = r0.f6986b
            int r1 = r1 - r5
            r10.m23352d(r8, r0, r1, r3)
        Lb4:
            com.esotericsoftware.asm.Label r10 = r8.f7130W
            if (r10 == 0) goto Lc2
            if (r4 == 0) goto Lbd
            r8.visitLabel(r4)
        Lbd:
            if (r9 != r2) goto Lc2
            r8.m23330r()
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.MethodWriter.visitJumpInsn(int, com.esotericsoftware.asm.Label):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0075, code lost:
        if (r0 != null) goto L23;
     */
    @Override // com.esotericsoftware.asm.MethodVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitLabel(com.esotericsoftware.asm.Label r6) {
        /*
            r5 = this;
            boolean r0 = r5.f7125R
            com.esotericsoftware.asm.ByteVector r1 = r5.f7152t
            int r2 = r1.f6986b
            byte[] r1 = r1.f6985a
            boolean r1 = r6.m23349g(r5, r2, r1)
            r0 = r0 | r1
            r5.f7125R = r0
            int r0 = r6.f7096a
            r1 = r0 & 1
            if (r1 == 0) goto L16
            return
        L16:
            int r1 = r5.f7127T
            r2 = 0
            if (r1 != 0) goto L5d
            com.esotericsoftware.asm.Label r1 = r5.f7130W
            if (r1 == 0) goto L34
            int r3 = r6.f7098c
            int r4 = r1.f7098c
            if (r3 != r4) goto L31
            int r2 = r1.f7096a
            r0 = r0 & 16
            r0 = r0 | r2
            r1.f7096a = r0
            com.esotericsoftware.asm.Frame r0 = r1.f7103h
            r6.f7103h = r0
            return
        L31:
            r5.m23342f(r2, r6)
        L34:
            r5.f7130W = r6
            com.esotericsoftware.asm.Frame r0 = r6.f7103h
            if (r0 != 0) goto L43
            com.esotericsoftware.asm.Frame r0 = new com.esotericsoftware.asm.Frame
            r0.<init>()
            r6.f7103h = r0
            r0.f7068a = r6
        L43:
            com.esotericsoftware.asm.Label r0 = r5.f7129V
            if (r0 == 0) goto L79
            int r1 = r6.f7098c
            int r2 = r0.f7098c
            if (r1 != r2) goto L77
            int r1 = r0.f7096a
            int r2 = r6.f7096a
            r2 = r2 & 16
            r1 = r1 | r2
            r0.f7096a = r1
            com.esotericsoftware.asm.Frame r1 = r0.f7103h
            r6.f7103h = r1
            r5.f7130W = r0
            return
        L5d:
            r0 = 1
            if (r1 != r0) goto L7b
            com.esotericsoftware.asm.Label r0 = r5.f7130W
            if (r0 == 0) goto L6d
            int r1 = r5.f7132Y
            r0.f7102g = r1
            int r0 = r5.f7131X
            r5.m23342f(r0, r6)
        L6d:
            r5.f7130W = r6
            r5.f7131X = r2
            r5.f7132Y = r2
            com.esotericsoftware.asm.Label r0 = r5.f7129V
            if (r0 == 0) goto L79
        L77:
            r0.f7104i = r6
        L79:
            r5.f7129V = r6
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.MethodWriter.visitLabel(com.esotericsoftware.asm.Label):void");
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitLdcInsn(Object obj) {
        ByteVector byteVector;
        int i;
        this.f7121N = this.f7152t.f6986b;
        Item m23394j = this.f7133a.m23394j(obj);
        Label label = this.f7130W;
        if (label != null) {
            if (this.f7127T == 0) {
                label.f7103h.m23374f(18, 0, this.f7133a, m23394j);
            } else {
                int i2 = m23394j.f7088b;
                int i3 = (i2 == 5 || i2 == 6) ? this.f7131X + 2 : this.f7131X + 1;
                if (i3 > this.f7132Y) {
                    this.f7132Y = i3;
                }
                this.f7131X = i3;
            }
        }
        int i4 = m23394j.f7087a;
        int i5 = m23394j.f7088b;
        if (i5 == 5 || i5 == 6) {
            byteVector = this.f7152t;
            i = 20;
        } else if (i4 < 256) {
            this.f7152t.m23424a(18, i4);
            return;
        } else {
            byteVector = this.f7152t;
            i = 19;
        }
        byteVector.m23422c(i, i4);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitLineNumber(int i, Label label) {
        if (this.f7120M == null) {
            this.f7120M = new ByteVector();
        }
        this.f7119L++;
        this.f7120M.putShort(label.f7098c);
        this.f7120M.putShort(i);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        int i2 = 1;
        if (str3 != null) {
            if (this.f7118K == null) {
                this.f7118K = new ByteVector();
            }
            this.f7117J++;
            this.f7118K.putShort(label.f7098c).putShort(label2.f7098c - label.f7098c).putShort(this.f7133a.newUTF8(str)).putShort(this.f7133a.newUTF8(str3)).putShort(i);
        }
        if (this.f7116I == null) {
            this.f7116I = new ByteVector();
        }
        this.f7115H++;
        this.f7116I.putShort(label.f7098c).putShort(label2.f7098c - label.f7098c).putShort(this.f7133a.newUTF8(str)).putShort(this.f7133a.newUTF8(str2)).putShort(i);
        if (this.f7127T != 2) {
            char charAt = str2.charAt(0);
            int i3 = i + ((charAt == 'J' || charAt == 'D') ? 2 : 2);
            if (i3 > this.f7154v) {
                this.f7154v = i3;
            }
        }
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public AnnotationVisitor visitLocalVariableAnnotation(int i, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        byteVector.putByte(i >>> 24).putShort(labelArr.length);
        for (int i2 = 0; i2 < labelArr.length; i2++) {
            byteVector.putShort(labelArr[i2].f7098c).putShort(labelArr2[i2].f7098c - labelArr[i2].f7098c).putShort(iArr[i2]);
        }
        if (typePath == null) {
            byteVector.putByte(0);
        } else {
            byte[] bArr = typePath.f7163a;
            int i3 = typePath.f7164b;
            byteVector.putByteArray(bArr, i3, (bArr[i3] * 2) + 1);
        }
        byteVector.putShort(this.f7133a.newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this.f7133a, true, byteVector, byteVector, byteVector.f6986b - 2);
        if (z) {
            annotationWriter.f6981g = this.f7122O;
            this.f7122O = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f7123P;
            this.f7123P = annotationWriter;
        }
        return annotationWriter;
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        ByteVector byteVector = this.f7152t;
        int i = byteVector.f6986b;
        this.f7121N = i;
        byteVector.putByte(171);
        ByteVector byteVector2 = this.f7152t;
        byteVector2.putByteArray(null, 0, (4 - (byteVector2.f6986b % 4)) % 4);
        label.m23352d(this, this.f7152t, i, true);
        this.f7152t.putInt(labelArr.length);
        for (int i2 = 0; i2 < labelArr.length; i2++) {
            this.f7152t.putInt(iArr[i2]);
            labelArr[i2].m23352d(this, this.f7152t, i, true);
        }
        m23340h(label, labelArr);
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitMaxs(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.MethodWriter.visitMaxs(int, int):void");
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
        this.f7121N = this.f7152t.f6986b;
        Item m23389o = this.f7133a.m23389o(str, str2, str3, z);
        int i2 = m23389o.f7089c;
        Label label = this.f7130W;
        if (label != null) {
            if (this.f7127T == 0) {
                label.f7103h.m23374f(i, 0, this.f7133a, m23389o);
            } else {
                if (i2 == 0) {
                    i2 = Type.getArgumentsAndReturnSizes(str3);
                    m23389o.f7089c = i2;
                }
                int i3 = i == 184 ? (this.f7131X - (i2 >> 2)) + (i2 & 3) + 1 : (this.f7131X - (i2 >> 2)) + (i2 & 3);
                if (i3 > this.f7132Y) {
                    this.f7132Y = i3;
                }
                this.f7131X = i3;
            }
        }
        if (i != 185) {
            this.f7152t.m23422c(i, m23389o.f7087a);
            return;
        }
        if (i2 == 0) {
            i2 = Type.getArgumentsAndReturnSizes(str3);
            m23389o.f7089c = i2;
        }
        this.f7152t.m23422c(185, m23389o.f7087a).m23424a(i2 >> 2, 0);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitMultiANewArrayInsn(String str, int i) {
        this.f7121N = this.f7152t.f6986b;
        Item m23393k = this.f7133a.m23393k(str);
        Label label = this.f7130W;
        if (label != null) {
            if (this.f7127T == 0) {
                label.f7103h.m23374f(197, i, this.f7133a, m23393k);
            } else {
                this.f7131X += 1 - i;
            }
        }
        this.f7152t.m23422c(197, m23393k.f7087a).putByte(i);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitParameter(String str, int i) {
        if (this.f7114G == null) {
            this.f7114G = new ByteVector();
        }
        this.f7113F++;
        this.f7114G.putShort(str == null ? 0 : this.f7133a.newUTF8(str)).putShort(i);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        if ("Ljava/lang/Synthetic;".equals(str)) {
            this.f7150r = Math.max(this.f7150r, i + 1);
            return new AnnotationWriter(this.f7133a, false, byteVector, null, 0);
        }
        byteVector.putShort(this.f7133a.newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this.f7133a, true, byteVector, byteVector, 2);
        if (z) {
            if (this.f7148p == null) {
                this.f7148p = new AnnotationWriter[Type.getArgumentTypes(this.f7137e).length];
            }
            AnnotationWriter[] annotationWriterArr = this.f7148p;
            annotationWriter.f6981g = annotationWriterArr[i];
            annotationWriterArr[i] = annotationWriter;
        } else {
            if (this.f7149q == null) {
                this.f7149q = new AnnotationWriter[Type.getArgumentTypes(this.f7137e).length];
            }
            AnnotationWriter[] annotationWriterArr2 = this.f7149q;
            annotationWriter.f6981g = annotationWriterArr2[i];
            annotationWriterArr2[i] = annotationWriter;
        }
        return annotationWriter;
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
        ByteVector byteVector = this.f7152t;
        int i3 = byteVector.f6986b;
        this.f7121N = i3;
        byteVector.putByte(170);
        ByteVector byteVector2 = this.f7152t;
        byteVector2.putByteArray(null, 0, (4 - (byteVector2.f6986b % 4)) % 4);
        label.m23352d(this, this.f7152t, i3, true);
        this.f7152t.putInt(i).putInt(i2);
        for (Label label2 : labelArr) {
            label2.m23352d(this, this.f7152t, i3, true);
        }
        m23340h(label, labelArr);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public AnnotationVisitor visitTryCatchAnnotation(int i, TypePath typePath, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        AnnotationWriter.m23430b(i, typePath, byteVector);
        byteVector.putShort(this.f7133a.newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this.f7133a, true, byteVector, byteVector, byteVector.f6986b - 2);
        if (z) {
            annotationWriter.f6981g = this.f7122O;
            this.f7122O = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f7123P;
            this.f7123P = annotationWriter;
        }
        return annotationWriter;
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
        this.f7110C++;
        Handler handler = new Handler();
        handler.f7081a = label;
        handler.f7082b = label2;
        handler.f7083c = label3;
        handler.f7084d = str;
        handler.f7085e = str != null ? this.f7133a.newClass(str) : 0;
        Handler handler2 = this.f7112E;
        if (handler2 == null) {
            this.f7111D = handler;
        } else {
            handler2.f7086f = handler;
        }
        this.f7112E = handler;
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        AnnotationWriter.m23430b(i, typePath, byteVector);
        byteVector.putShort(this.f7133a.newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this.f7133a, true, byteVector, byteVector, byteVector.f6986b - 2);
        if (z) {
            annotationWriter.f6981g = this.f7146n;
            this.f7146n = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f7147o;
            this.f7147o = annotationWriter;
        }
        return annotationWriter;
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitTypeInsn(int i, String str) {
        this.f7121N = this.f7152t.f6986b;
        Item m23393k = this.f7133a.m23393k(str);
        Label label = this.f7130W;
        if (label != null) {
            if (this.f7127T == 0) {
                label.f7103h.m23374f(i, this.f7152t.f6986b, this.f7133a, m23393k);
            } else if (i == 187) {
                int i2 = this.f7131X + 1;
                if (i2 > this.f7132Y) {
                    this.f7132Y = i2;
                }
                this.f7131X = i2;
            }
        }
        this.f7152t.m23422c(i, m23393k.f7087a);
    }

    @Override // com.esotericsoftware.asm.MethodVisitor
    public void visitVarInsn(int i, int i2) {
        this.f7121N = this.f7152t.f6986b;
        Label label = this.f7130W;
        if (label != null) {
            if (this.f7127T == 0) {
                label.f7103h.m23374f(i, i2, null, null);
            } else if (i == 169) {
                label.f7096a |= 256;
                label.f7101f = this.f7131X;
                m23330r();
            } else {
                int i3 = this.f7131X + Frame.f7067i[i];
                if (i3 > this.f7132Y) {
                    this.f7132Y = i3;
                }
                this.f7131X = i3;
            }
        }
        if (this.f7127T != 2) {
            int i4 = (i == 22 || i == 24 || i == 55 || i == 57) ? i2 + 2 : i2 + 1;
            if (i4 > this.f7154v) {
                this.f7154v = i4;
            }
        }
        if (i2 >= 4 || i == 169) {
            ByteVector byteVector = this.f7152t;
            if (i2 >= 256) {
                byteVector.putByte(196).m23422c(i, i2);
            } else {
                byteVector.m23424a(i, i2);
            }
        } else {
            this.f7152t.putByte((i < 54 ? ((i - 21) << 2) + 26 : ((i - 54) << 2) + 59) + i2);
        }
        if (i < 54 || this.f7127T != 0 || this.f7110C <= 0) {
            return;
        }
        visitLabel(new Label());
    }
}
