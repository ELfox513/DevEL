package p168r4;
/* renamed from: r4.mp0 */
/* loaded from: classes2.dex */
public final class mp0 {

    /* renamed from: a */
    public final C5913jk f27841a = new C5913jk(true, 65536);

    /* renamed from: b */
    public long f27842b = 15000000;

    /* renamed from: c */
    public long f27843c = 30000000;

    /* renamed from: d */
    public long f27844d = 2500000;

    /* renamed from: e */
    public long f27845e = 5000000;

    /* renamed from: f */
    public int f27846f;

    /* renamed from: g */
    public boolean f27847g;

    /* renamed from: a */
    public final void m9301a() {
        m9291k(false);
    }

    /* renamed from: b */
    public final void m9300b(InterfaceC6055nd[] interfaceC6055ndArr, C6023mj c6023mj, C6468yj c6468yj) {
        this.f27846f = 0;
        for (int i = 0; i < 2; i++) {
            if (c6468yj.m4681a(i) != null) {
                this.f27846f += C5988ll.m9637q(interfaceC6055ndArr[i].zza());
            }
        }
        this.f27841a.m10262b(this.f27846f);
    }

    /* renamed from: c */
    public final void m9299c() {
        m9291k(true);
    }

    /* renamed from: d */
    public final void m9298d() {
        m9291k(true);
    }

    /* renamed from: e */
    public final synchronized boolean m9297e(long j, boolean z) {
        long j2;
        j2 = z ? this.f27845e : this.f27844d;
        return j2 <= 0 || j >= j2;
    }

    /* renamed from: f */
    public final synchronized boolean m9296f(long j) {
        boolean z;
        z = true;
        char c = j > this.f27843c ? (char) 0 : j < this.f27842b ? (char) 2 : (char) 1;
        int m10257g = this.f27841a.m10257g();
        int i = this.f27846f;
        if (c != 2 && (c != 1 || !this.f27847g || m10257g >= i)) {
            z = false;
        }
        this.f27847g = z;
        return z;
    }

    /* renamed from: g */
    public final synchronized void m9295g(int i) {
        this.f27842b = i * 1000;
    }

    /* renamed from: h */
    public final synchronized void m9294h(int i) {
        this.f27843c = i * 1000;
    }

    /* renamed from: i */
    public final synchronized void m9293i(int i) {
        this.f27844d = i * 1000;
    }

    /* renamed from: j */
    public final synchronized void m9292j(int i) {
        this.f27845e = i * 1000;
    }

    /* renamed from: k */
    public final void m9291k(boolean z) {
        this.f27846f = 0;
        this.f27847g = false;
        if (z) {
            this.f27841a.m10263a();
        }
    }

    /* renamed from: l */
    public final C5913jk m9290l() {
        return this.f27841a;
    }
}
