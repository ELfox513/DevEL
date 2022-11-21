package p168r4;

import java.util.Arrays;
/* renamed from: r4.b64 */
/* loaded from: classes2.dex */
public final class b64 {

    /* renamed from: a */
    public final int f20875a;

    /* renamed from: b */
    public boolean f20876b;

    /* renamed from: c */
    public boolean f20877c;

    /* renamed from: d */
    public byte[] f20878d;

    /* renamed from: e */
    public int f20879e;

    public b64(int i, int i2) {
        this.f20875a = i;
        byte[] bArr = new byte[131];
        this.f20878d = bArr;
        bArr[2] = 1;
    }

    /* renamed from: a */
    public final void m12866a() {
        this.f20876b = false;
        this.f20877c = false;
    }

    /* renamed from: b */
    public final boolean m12865b() {
        return this.f20877c;
    }

    /* renamed from: c */
    public final void m12864c(int i) {
        C5903ja.m10371d(!this.f20876b);
        boolean z = i == this.f20875a;
        this.f20876b = z;
        if (z) {
            this.f20879e = 3;
            this.f20877c = false;
        }
    }

    /* renamed from: e */
    public final boolean m12862e(int i) {
        if (this.f20876b) {
            this.f20879e -= i;
            this.f20876b = false;
            this.f20877c = true;
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public final void m12863d(byte[] bArr, int i, int i2) {
        if (!this.f20876b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f20878d;
        int length = bArr2.length;
        int i4 = this.f20879e + i3;
        if (length < i4) {
            this.f20878d = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.f20878d, this.f20879e, i3);
        this.f20879e += i3;
    }
}
