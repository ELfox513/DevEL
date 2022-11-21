package com.esotericsoftware.asm;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* loaded from: classes.dex */
public class Label {

    /* renamed from: a */
    public int f7096a;

    /* renamed from: b */
    public int f7097b;

    /* renamed from: c */
    public int f7098c;

    /* renamed from: d */
    public int f7099d;

    /* renamed from: e */
    public int[] f7100e;

    /* renamed from: f */
    public int f7101f;

    /* renamed from: g */
    public int f7102g;

    /* renamed from: h */
    public Frame f7103h;

    /* renamed from: i */
    public Label f7104i;
    public Object info;

    /* renamed from: j */
    public Edge f7105j;

    /* renamed from: k */
    public Label f7106k;

    /* renamed from: a */
    public Label m23355a() {
        Frame frame = this.f7103h;
        return frame == null ? this : frame.f7068a;
    }

    /* renamed from: b */
    public final void m23354b(int i, int i2) {
        if (this.f7100e == null) {
            this.f7100e = new int[6];
        }
        int i3 = this.f7099d;
        int[] iArr = this.f7100e;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f7100e = iArr2;
        }
        int[] iArr3 = this.f7100e;
        int i4 = this.f7099d;
        int i5 = i4 + 1;
        iArr3[i4] = i;
        this.f7099d = i5 + 1;
        iArr3[i5] = i2;
    }

    /* renamed from: c */
    public void m23353c(long j, int i) {
        int i2 = this.f7096a;
        if ((i2 & 1024) == 0) {
            this.f7096a = i2 | 1024;
            this.f7100e = new int[(i / 32) + 1];
        }
        int[] iArr = this.f7100e;
        int i3 = (int) (j >>> 32);
        iArr[i3] = iArr[i3] | ((int) j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        if (r4 != false) goto L6;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m23352d(com.esotericsoftware.asm.MethodWriter r1, com.esotericsoftware.asm.ByteVector r2, int r3, boolean r4) {
        /*
            r0 = this;
            int r1 = r0.f7096a
            r1 = r1 & 2
            if (r1 != 0) goto L17
            r1 = -1
            if (r4 == 0) goto L11
            int r3 = (-1) - r3
            int r4 = r2.f6986b
            r0.m23354b(r3, r4)
            goto L1c
        L11:
            int r4 = r2.f6986b
            r0.m23354b(r3, r4)
            goto L20
        L17:
            int r1 = r0.f7098c
            int r1 = r1 - r3
            if (r4 == 0) goto L20
        L1c:
            r2.putInt(r1)
            goto L23
        L20:
            r2.putShort(r1)
        L23:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.Label.m23352d(com.esotericsoftware.asm.MethodWriter, com.esotericsoftware.asm.ByteVector, int, boolean):void");
    }

    /* renamed from: e */
    public boolean m23351e(long j) {
        return ((this.f7096a & 1024) == 0 || (this.f7100e[(int) (j >>> 32)] & ((int) j)) == 0) ? false : true;
    }

    /* renamed from: f */
    public boolean m23350f(Label label) {
        if ((this.f7096a & 1024) != 0 && (label.f7096a & 1024) != 0) {
            int i = 0;
            while (true) {
                int[] iArr = this.f7100e;
                if (i >= iArr.length) {
                    break;
                } else if ((iArr[i] & label.f7100e[i]) != 0) {
                    return true;
                } else {
                    i++;
                }
            }
        }
        return false;
    }

    /* renamed from: g */
    public boolean m23349g(MethodWriter methodWriter, int i, byte[] bArr) {
        this.f7096a |= 2;
        this.f7098c = i;
        int i2 = 0;
        boolean z = false;
        while (i2 < this.f7099d) {
            int[] iArr = this.f7100e;
            int i3 = i2 + 1;
            int i4 = iArr[i2];
            int i5 = i3 + 1;
            int i6 = iArr[i3];
            if (i4 >= 0) {
                int i7 = i - i4;
                if (i7 < -32768 || i7 > 32767) {
                    int i8 = i6 - 1;
                    int i9 = bArr[i8] & DefaultClassResolver.NAME;
                    if (i9 <= 168) {
                        bArr[i8] = (byte) (i9 + 49);
                    } else {
                        bArr[i8] = (byte) (i9 + 20);
                    }
                    z = true;
                }
                bArr[i6] = (byte) (i7 >>> 8);
                bArr[i6 + 1] = (byte) i7;
            } else {
                int i10 = i4 + i + 1;
                int i11 = i6 + 1;
                bArr[i6] = (byte) (i10 >>> 24);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (i10 >>> 16);
                bArr[i12] = (byte) (i10 >>> 8);
                bArr[i12 + 1] = (byte) i10;
            }
            i2 = i5;
        }
        return z;
    }

    public int getOffset() {
        if ((this.f7096a & 2) != 0) {
            return this.f7098c;
        }
        throw new IllegalStateException("Label offset position has not been resolved yet");
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m23348h(com.esotericsoftware.asm.Label r6, long r7, int r9) {
        /*
            r5 = this;
            r0 = r5
        L1:
            if (r0 == 0) goto L5c
            com.esotericsoftware.asm.Label r1 = r0.f7106k
            r2 = 0
            r0.f7106k = r2
            if (r6 == 0) goto L35
            int r2 = r0.f7096a
            r3 = r2 & 2048(0x800, float:2.87E-42)
            if (r3 == 0) goto L11
            goto L3b
        L11:
            r2 = r2 | 2048(0x800, float:2.87E-42)
            r0.f7096a = r2
            r2 = r2 & 256(0x100, float:3.59E-43)
            if (r2 == 0) goto L40
            boolean r2 = r0.m23350f(r6)
            if (r2 != 0) goto L40
            com.esotericsoftware.asm.Edge r2 = new com.esotericsoftware.asm.Edge
            r2.<init>()
            int r3 = r0.f7101f
            r2.f7052a = r3
            com.esotericsoftware.asm.Edge r3 = r6.f7105j
            com.esotericsoftware.asm.Label r3 = r3.f7053b
            r2.f7053b = r3
            com.esotericsoftware.asm.Edge r3 = r0.f7105j
            r2.f7054c = r3
            r0.f7105j = r2
            goto L40
        L35:
            boolean r2 = r0.m23351e(r7)
            if (r2 == 0) goto L3d
        L3b:
            r0 = r1
            goto L1
        L3d:
            r0.m23353c(r7, r9)
        L40:
            com.esotericsoftware.asm.Edge r2 = r0.f7105j
        L42:
            if (r2 == 0) goto L3b
            int r3 = r0.f7096a
            r3 = r3 & 128(0x80, float:1.794E-43)
            if (r3 == 0) goto L50
            com.esotericsoftware.asm.Edge r3 = r0.f7105j
            com.esotericsoftware.asm.Edge r3 = r3.f7054c
            if (r2 == r3) goto L59
        L50:
            com.esotericsoftware.asm.Label r3 = r2.f7053b
            com.esotericsoftware.asm.Label r4 = r3.f7106k
            if (r4 != 0) goto L59
            r3.f7106k = r1
            r1 = r3
        L59:
            com.esotericsoftware.asm.Edge r2 = r2.f7054c
            goto L42
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.Label.m23348h(com.esotericsoftware.asm.Label, long, int):void");
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("L");
        stringBuffer.append(System.identityHashCode(this));
        return stringBuffer.toString();
    }
}
