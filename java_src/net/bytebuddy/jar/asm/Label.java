package net.bytebuddy.jar.asm;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* loaded from: classes.dex */
public class Label {

    /* renamed from: k */
    public static final Label f19208k = new Label();

    /* renamed from: a */
    public short f19209a;

    /* renamed from: b */
    public int f19210b;

    /* renamed from: c */
    public short f19211c;

    /* renamed from: d */
    public short f19212d;

    /* renamed from: e */
    public short f19213e;

    /* renamed from: f */
    public short f19214f;
    private int[] forwardReferences;

    /* renamed from: g */
    public Frame f19215g;

    /* renamed from: h */
    public Label f19216h;

    /* renamed from: i */
    public Edge f19217i;
    public Object info;

    /* renamed from: j */
    public Label f19218j;
    private short lineNumber;
    private int[] otherLineNumbers;

    /* renamed from: d */
    public final Label m14887d() {
        Frame frame = this.f19215g;
        return frame == null ? this : frame.f19201a;
    }

    public String toString() {
        return "L" + System.identityHashCode(this);
    }

    private void addForwardReference(int i, int i2, int i3) {
        if (this.forwardReferences == null) {
            this.forwardReferences = new int[6];
        }
        int[] iArr = this.forwardReferences;
        int i4 = iArr[0];
        if (i4 + 2 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.forwardReferences = iArr2;
        }
        int[] iArr3 = this.forwardReferences;
        int i5 = i4 + 1;
        iArr3[i5] = i;
        int i6 = i5 + 1;
        iArr3[i6] = i2 | i3;
        iArr3[0] = i6;
    }

    private Label pushSuccessors(Label label) {
        boolean z;
        for (Edge edge = this.f19217i; edge != null; edge = edge.f19199c) {
            if ((this.f19209a & 16) != 0 && edge == this.f19217i.f19199c) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                Label label2 = edge.f19198b;
                if (label2.f19218j == null) {
                    label2.f19218j = label;
                    label = label2;
                }
            }
        }
        return label;
    }

    /* renamed from: b */
    public final void m14889b(int i) {
        if (this.lineNumber == 0) {
            this.lineNumber = (short) i;
            return;
        }
        if (this.otherLineNumbers == null) {
            this.otherLineNumbers = new int[4];
        }
        int[] iArr = this.otherLineNumbers;
        int i2 = iArr[0] + 1;
        iArr[0] = i2;
        if (i2 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 4];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.otherLineNumbers = iArr2;
        }
        this.otherLineNumbers[i2] = i;
    }

    /* renamed from: c */
    public final void m14888c(Label label) {
        Label label2 = f19208k;
        this.f19218j = label2;
        Label label3 = label2;
        Label label4 = this;
        while (label4 != f19208k) {
            Label label5 = label4.f19218j;
            label4.f19218j = label3;
            if ((label4.f19209a & 64) != 0 && label4.f19214f != label.f19214f) {
                label4.f19217i = new Edge(label4.f19212d, label.f19217i.f19198b, label4.f19217i);
            }
            label3 = label4;
            label4 = label4.pushSuccessors(label5);
        }
        while (label3 != f19208k) {
            Label label6 = label3.f19218j;
            label3.f19218j = null;
            label3 = label6;
        }
    }

    /* renamed from: e */
    public final void m14886e(short s) {
        this.f19218j = f19208k;
        Label label = this;
        while (label != f19208k) {
            Label label2 = label.f19218j;
            label.f19218j = null;
            if (label.f19214f == 0) {
                label.f19214f = s;
                label = label.pushSuccessors(label2);
            } else {
                label = label2;
            }
        }
    }

    /* renamed from: f */
    public final void m14885f(ByteVector byteVector, int i, boolean z) {
        if ((this.f19209a & 4) == 0) {
            if (z) {
                addForwardReference(i, 536870912, byteVector.f19174b);
                byteVector.putInt(-1);
                return;
            }
            addForwardReference(i, 268435456, byteVector.f19174b);
            byteVector.putShort(-1);
        } else if (z) {
            byteVector.putInt(this.f19210b - i);
        } else {
            byteVector.putShort(this.f19210b - i);
        }
    }

    /* renamed from: g */
    public final boolean m14884g(byte[] bArr, int i) {
        this.f19209a = (short) (this.f19209a | 4);
        this.f19210b = i;
        int[] iArr = this.forwardReferences;
        boolean z = false;
        if (iArr == null) {
            return false;
        }
        for (int i2 = iArr[0]; i2 > 0; i2 -= 2) {
            int[] iArr2 = this.forwardReferences;
            int i3 = iArr2[i2 - 1];
            int i4 = iArr2[i2];
            int i5 = i - i3;
            int i6 = 268435455 & i4;
            if ((i4 & (-268435456)) == 268435456) {
                if (i5 < -32768 || i5 > 32767) {
                    int i7 = bArr[i3] & DefaultClassResolver.NAME;
                    if (i7 < 198) {
                        bArr[i3] = (byte) (i7 + 49);
                    } else {
                        bArr[i3] = (byte) (i7 + 20);
                    }
                    z = true;
                }
                bArr[i6] = (byte) (i5 >>> 8);
                bArr[i6 + 1] = (byte) i5;
            } else {
                int i8 = i6 + 1;
                bArr[i6] = (byte) (i5 >>> 24);
                int i9 = i8 + 1;
                bArr[i8] = (byte) (i5 >>> 16);
                bArr[i9] = (byte) (i5 >>> 8);
                bArr[i9 + 1] = (byte) i5;
            }
        }
        return z;
    }

    public int getOffset() {
        if ((this.f19209a & 4) != 0) {
            return this.f19210b;
        }
        throw new IllegalStateException("Label offset position has not been resolved yet");
    }

    /* renamed from: a */
    public final void m14890a(MethodVisitor methodVisitor, boolean z) {
        short s;
        methodVisitor.visitLabel(this);
        if (z && (s = this.lineNumber) != 0) {
            methodVisitor.visitLineNumber(s & 65535, this);
            if (this.otherLineNumbers != null) {
                int i = 1;
                while (true) {
                    int[] iArr = this.otherLineNumbers;
                    if (i <= iArr[0]) {
                        methodVisitor.visitLineNumber(iArr[i], this);
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }
    }
}
