package p168r4;
/* renamed from: r4.p24 */
/* loaded from: classes2.dex */
public final class p24 {

    /* renamed from: a */
    public final byte[] f29317a = new byte[10];

    /* renamed from: b */
    public boolean f29318b;

    /* renamed from: c */
    public int f29319c;

    /* renamed from: d */
    public long f29320d;

    /* renamed from: e */
    public int f29321e;

    /* renamed from: f */
    public int f29322f;

    /* renamed from: g */
    public int f29323g;

    /* renamed from: a */
    public final void m8500a() {
        this.f29318b = false;
        this.f29319c = 0;
    }

    /* renamed from: c */
    public final void m8498c(o24 o24Var, long j, int i, int i2, int i3) {
        if (this.f29318b) {
            int i4 = this.f29319c;
            int i5 = i4 + 1;
            this.f29319c = i5;
            if (i4 == 0) {
                this.f29320d = j;
                this.f29321e = i;
                this.f29322f = 0;
            }
            this.f29322f += i2;
            this.f29323g = i3;
            if (i5 >= 16) {
                m8497d(o24Var);
            }
        }
    }

    /* renamed from: d */
    public final void m8497d(o24 o24Var) {
        if (this.f29319c > 0) {
            o24Var.f28800X.mo4005e(this.f29320d, this.f29321e, this.f29322f, this.f29323g, o24Var.f28811j);
            this.f29319c = 0;
        }
    }

    /* renamed from: b */
    public final void m8499b(b04 b04Var) {
        if (this.f29318b) {
            return;
        }
        ((vz3) b04Var).mo5960i(this.f29317a, 0, 10, false);
        b04Var.mo5959k();
        byte[] bArr = this.f29317a;
        int[] iArr = gz3.f24377a;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            this.f29318b = true;
        }
    }
}
