package p168r4;

import java.util.Arrays;
/* renamed from: r4.n54 */
/* loaded from: classes2.dex */
public final class n54 {

    /* renamed from: e */
    public static final byte[] f28164e = {0, 0, 1};

    /* renamed from: a */
    public boolean f28165a;

    /* renamed from: b */
    public int f28166b;

    /* renamed from: c */
    public int f28167c;

    /* renamed from: d */
    public byte[] f28168d = new byte[128];

    public n54(int i) {
    }

    /* renamed from: a */
    public final void m9155a() {
        this.f28165a = false;
        this.f28166b = 0;
        this.f28167c = 0;
    }

    /* renamed from: b */
    public final boolean m9154b(int i, int i2) {
        if (this.f28165a) {
            int i3 = this.f28166b - i2;
            this.f28166b = i3;
            if (this.f28167c != 0 || i != 181) {
                this.f28165a = false;
                return true;
            }
            this.f28167c = i3;
        } else if (i == 179) {
            this.f28165a = true;
        }
        m9153c(f28164e, 0, 3);
        return false;
    }

    /* renamed from: c */
    public final void m9153c(byte[] bArr, int i, int i2) {
        if (!this.f28165a) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f28168d;
        int length = bArr2.length;
        int i4 = this.f28166b + i3;
        if (length < i4) {
            this.f28168d = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.f28168d, this.f28166b, i3);
        this.f28166b += i3;
    }
}
