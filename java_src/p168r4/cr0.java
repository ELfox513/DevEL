package p168r4;
/* renamed from: r4.cr0 */
/* loaded from: classes2.dex */
public final class cr0 implements InterfaceC5825h5 {

    /* renamed from: a */
    public final qw3 f21655a = new qw3(true, 65536);

    /* renamed from: b */
    public long f21656b = 15000000;

    /* renamed from: c */
    public long f21657c = 30000000;

    /* renamed from: d */
    public long f21658d = 2500000;

    /* renamed from: e */
    public long f21659e = 5000000;

    /* renamed from: f */
    public int f21660f;

    /* renamed from: g */
    public boolean f21661g;

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: a */
    public final void mo10743a() {
        m12368m(true);
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: b */
    public final void mo10742b() {
        m12368m(true);
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: c */
    public final boolean mo10741c() {
        return false;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: d */
    public final boolean mo10740d(long j, float f, boolean z, long j2) {
        long j3 = z ? this.f21659e : this.f21658d;
        return j3 <= 0 || j >= j3;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: e */
    public final long mo10739e() {
        return 0L;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: f */
    public final qw3 mo10738f() {
        return this.f21655a;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: g */
    public final boolean mo10737g(long j, long j2, float f) {
        boolean z = true;
        char c = j2 > this.f21657c ? (char) 0 : j2 < this.f21656b ? (char) 2 : (char) 1;
        int m7648g = this.f21655a.m7648g();
        int i = this.f21660f;
        if (c != 2 && (c != 1 || !this.f21661g || m7648g >= i)) {
            z = false;
        }
        this.f21661g = z;
        return z;
    }

    @Override // p168r4.InterfaceC5825h5
    /* renamed from: h */
    public final void mo10736h(InterfaceC5790g7[] interfaceC5790g7Arr, j44 j44Var, hv3[] hv3VarArr) {
        int i;
        this.f21660f = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            if (hv3VarArr[i2] != null) {
                int i3 = this.f21660f;
                if (interfaceC5790g7Arr[i2].mo10965G() != 1) {
                    i = 131072000;
                } else {
                    i = 13107200;
                }
                this.f21660f = i3 + i;
            }
        }
        this.f21655a.m7653b(this.f21660f);
    }

    /* renamed from: i */
    public final synchronized void m12372i(int i) {
        this.f21656b = i * 1000;
    }

    /* renamed from: j */
    public final synchronized void m12371j(int i) {
        this.f21657c = i * 1000;
    }

    /* renamed from: k */
    public final synchronized void m12370k(int i) {
        this.f21658d = i * 1000;
    }

    /* renamed from: l */
    public final synchronized void m12369l(int i) {
        this.f21659e = i * 1000;
    }

    /* renamed from: m */
    public final void m12368m(boolean z) {
        this.f21660f = 0;
        this.f21661g = false;
        if (z) {
            this.f21655a.m7654a();
        }
    }

    @Override // p168r4.InterfaceC5825h5
    public final void zza() {
        m12368m(false);
    }
}
