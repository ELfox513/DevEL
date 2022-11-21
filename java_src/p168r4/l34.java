package p168r4;
/* renamed from: r4.l34 */
/* loaded from: classes2.dex */
public final class l34 implements h34 {

    /* renamed from: a */
    public final C6423xb f27061a;

    /* renamed from: b */
    public final int f27062b;

    /* renamed from: c */
    public final int f27063c;

    /* renamed from: d */
    public int f27064d;

    /* renamed from: e */
    public int f27065e;

    @Override // p168r4.h34
    /* renamed from: a */
    public final int mo9796a() {
        return -1;
    }

    @Override // p168r4.h34
    public final int zza() {
        return this.f27062b;
    }

    @Override // p168r4.h34
    /* renamed from: b */
    public final int mo9795b() {
        int i = this.f27063c;
        if (i == 8) {
            return this.f27061a.m5397v();
        }
        if (i == 16) {
            return this.f27061a.m5396w();
        }
        int i2 = this.f27064d;
        this.f27064d = i2 + 1;
        if (i2 % 2 == 0) {
            int m5397v = this.f27061a.m5397v();
            this.f27065e = m5397v;
            return (m5397v & 240) >> 4;
        }
        return this.f27065e & 15;
    }

    public l34(e34 e34Var) {
        C6423xb c6423xb = e34Var.f22784b;
        this.f27061a = c6423xb;
        c6423xb.m5403p(12);
        this.f27063c = c6423xb.m5417b() & 255;
        this.f27062b = c6423xb.m5417b();
    }
}
