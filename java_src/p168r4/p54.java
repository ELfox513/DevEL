package p168r4;

import android.util.Log;
import java.util.Arrays;
/* renamed from: r4.p54 */
/* loaded from: classes2.dex */
public final class p54 {

    /* renamed from: f */
    public static final byte[] f29349f = {0, 0, 1};

    /* renamed from: a */
    public boolean f29350a;

    /* renamed from: b */
    public int f29351b;

    /* renamed from: c */
    public int f29352c;

    /* renamed from: d */
    public int f29353d;

    /* renamed from: e */
    public byte[] f29354e = new byte[128];

    public p54(int i) {
    }

    /* renamed from: a */
    public final void m8482a() {
        this.f29350a = false;
        this.f29352c = 0;
        this.f29351b = 0;
    }

    /* renamed from: b */
    public final boolean m8481b(int i, int i2) {
        int i3 = this.f29351b;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i == 179 || i == 181) {
                            this.f29352c -= i2;
                            this.f29350a = false;
                            return true;
                        }
                    } else if ((i & 240) != 32) {
                        Log.w("H263Reader", "Unexpected start code value");
                        m8482a();
                    } else {
                        this.f29353d = this.f29352c;
                        this.f29351b = 4;
                    }
                } else if (i > 31) {
                    Log.w("H263Reader", "Unexpected start code value");
                    m8482a();
                } else {
                    this.f29351b = 3;
                }
            } else if (i != 181) {
                Log.w("H263Reader", "Unexpected start code value");
                m8482a();
            } else {
                this.f29351b = 2;
            }
        } else if (i == 176) {
            this.f29351b = 1;
            this.f29350a = true;
        }
        m8480c(f29349f, 0, 3);
        return false;
    }

    /* renamed from: c */
    public final void m8480c(byte[] bArr, int i, int i2) {
        if (!this.f29350a) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f29354e;
        int length = bArr2.length;
        int i4 = this.f29352c + i3;
        if (length < i4) {
            this.f29354e = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.f29354e, this.f29352c, i3);
        this.f29352c += i3;
    }
}
