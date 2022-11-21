package p168r4;

import p235z2.C7601t;
/* renamed from: r4.tr2 */
/* loaded from: classes2.dex */
public final class tr2 {

    /* renamed from: a */
    public final long f31968a;

    /* renamed from: c */
    public long f31970c;

    /* renamed from: b */
    public final rr2 f31969b = new rr2();

    /* renamed from: d */
    public int f31971d = 0;

    /* renamed from: e */
    public int f31972e = 0;

    /* renamed from: f */
    public int f31973f = 0;

    public tr2() {
        long mo24763a = C7601t.m932k().mo24763a();
        this.f31968a = mo24763a;
        this.f31970c = mo24763a;
    }

    /* renamed from: a */
    public final void m6738a() {
        this.f31970c = C7601t.m932k().mo24763a();
        this.f31971d++;
    }

    /* renamed from: b */
    public final void m6737b() {
        this.f31972e++;
        this.f31969b.f30671a = true;
    }

    /* renamed from: c */
    public final void m6736c() {
        this.f31973f++;
        this.f31969b.f30672b++;
    }

    /* renamed from: d */
    public final long m6735d() {
        return this.f31968a;
    }

    /* renamed from: e */
    public final long m6734e() {
        return this.f31970c;
    }

    /* renamed from: f */
    public final int m6733f() {
        return this.f31971d;
    }

    /* renamed from: g */
    public final rr2 m6732g() {
        rr2 clone = this.f31969b.clone();
        rr2 rr2Var = this.f31969b;
        rr2Var.f30671a = false;
        rr2Var.f30672b = 0;
        return clone;
    }

    /* renamed from: h */
    public final String m6731h() {
        return "Created: " + this.f31968a + " Last accessed: " + this.f31970c + " Accesses: " + this.f31971d + "\nEntries retrieved: Valid: " + this.f31972e + " Stale: " + this.f31973f;
    }
}
