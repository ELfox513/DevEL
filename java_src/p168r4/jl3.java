package p168r4;

import java.io.OutputStream;
import java.util.ArrayList;
/* renamed from: r4.jl3 */
/* loaded from: classes2.dex */
public final class jl3 extends OutputStream {

    /* renamed from: q */
    public static final byte[] f26067q = new byte[0];

    /* renamed from: d */
    public int f26070d;

    /* renamed from: p */
    public int f26072p;

    /* renamed from: a */
    public final int f26068a = 128;

    /* renamed from: b */
    public final ArrayList<ll3> f26069b = new ArrayList<>();

    /* renamed from: k */
    public byte[] f26071k = new byte[128];

    /* renamed from: c */
    public final synchronized ll3 m10252c() {
        int i = this.f26072p;
        byte[] bArr = this.f26071k;
        int length = bArr.length;
        if (i < length) {
            if (i > 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(length, i));
                this.f26069b.add(new hl3(bArr2));
            }
        } else {
            this.f26069b.add(new hl3(bArr));
            this.f26071k = f26067q;
        }
        this.f26070d += this.f26072p;
        this.f26072p = 0;
        return ll3.m9628O(this.f26069b);
    }

    /* renamed from: d */
    public final synchronized int m10251d() {
        return this.f26070d + this.f26072p;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m10251d()));
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i) {
        if (this.f26072p == this.f26071k.length) {
            m10250e(1);
        }
        byte[] bArr = this.f26071k;
        int i2 = this.f26072p;
        this.f26072p = i2 + 1;
        bArr[i2] = (byte) i;
    }

    /* renamed from: e */
    public final void m10250e(int i) {
        this.f26069b.add(new hl3(this.f26071k));
        int length = this.f26070d + this.f26071k.length;
        this.f26070d = length;
        this.f26071k = new byte[Math.max(this.f26068a, Math.max(i, length >>> 1))];
        this.f26072p = 0;
    }

    public jl3(int i) {
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.f26071k;
        int length = bArr2.length;
        int i3 = this.f26072p;
        int i4 = length - i3;
        if (i2 <= i4) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.f26072p += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i4);
        int i5 = i2 - i4;
        m10250e(i5);
        System.arraycopy(bArr, i + i4, this.f26071k, 0, i5);
        this.f26072p = i5;
    }
}
