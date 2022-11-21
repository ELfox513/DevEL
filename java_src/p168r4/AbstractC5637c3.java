package p168r4;
/* renamed from: r4.c3 */
/* loaded from: classes2.dex */
public abstract class AbstractC5637c3 implements InterfaceC5790g7, InterfaceC5827h7 {

    /* renamed from: a */
    public final int f21323a;

    /* renamed from: d */
    public C5864i7 f21325d;

    /* renamed from: k */
    public int f21326k;

    /* renamed from: p */
    public int f21327p;

    /* renamed from: q */
    public vu3 f21328q;

    /* renamed from: r */
    public C5713e5[] f21329r;

    /* renamed from: s */
    public long f21330s;

    /* renamed from: u */
    public boolean f21332u;

    /* renamed from: v */
    public boolean f21333v;

    /* renamed from: b */
    public final C5751f5 f21324b = new C5751f5();

    /* renamed from: t */
    public long f21331t = Long.MIN_VALUE;

    public AbstractC5637c3(int i) {
        this.f21323a = i;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: F */
    public final boolean mo11271F() {
        return this.f21332u;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: F0 */
    public final int mo11270F0() {
        return this.f21327p;
    }

    @Override // p168r4.InterfaceC5790g7, p168r4.InterfaceC5827h7
    /* renamed from: G */
    public final int mo10965G() {
        return this.f21323a;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: H */
    public final boolean mo11269H() {
        return this.f21331t == Long.MIN_VALUE;
    }

    @Override // p168r4.InterfaceC5827h7
    /* renamed from: J */
    public int mo10964J() {
        return 0;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: T */
    public final void mo11266T(int i) {
        this.f21326k = i;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: V */
    public final void mo11265V(C5864i7 c5864i7, C5713e5[] c5713e5Arr, vu3 vu3Var, long j, boolean z, boolean z2, long j2, long j3) {
        boolean z3;
        if (this.f21327p == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        C5903ja.m10371d(z3);
        this.f21325d = c5864i7;
        this.f21327p = 1;
        mo11538n(z, z2);
        mo11267S(c5713e5Arr, vu3Var, j2, j3);
        mo10704o(j, z);
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: W */
    public final long mo11264W() {
        return this.f21331t;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: X */
    public final void mo11263X() {
        this.f21332u = true;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: Y */
    public final InterfaceC5827h7 mo11262Y() {
        return this;
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: Z */
    public final vu3 mo11261Z() {
        return this.f21328q;
    }

    @Override // p168r4.InterfaceC5641c7
    /* renamed from: a */
    public void mo8872a(int i, Object obj) {
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: a0 */
    public void mo11260a0(float f, float f2) {
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: c0 */
    public final void mo11258c0(long j) {
        this.f21332u = false;
        this.f21331t = j;
        mo10704o(j, false);
    }

    /* renamed from: e */
    public abstract void mo10705e(C5713e5[] c5713e5Arr, long j, long j2);

    /* renamed from: f */
    public final C5751f5 m12649f() {
        C5751f5 c5751f5 = this.f21324b;
        c5751f5.f23300b = null;
        c5751f5.f23299a = null;
        return c5751f5;
    }

    /* renamed from: g */
    public final C5713e5[] m12648g() {
        C5713e5[] c5713e5Arr = this.f21329r;
        c5713e5Arr.getClass();
        return c5713e5Arr;
    }

    /* renamed from: h */
    public final C5864i7 m12647h() {
        C5864i7 c5864i7 = this.f21325d;
        c5864i7.getClass();
        return c5864i7;
    }

    /* renamed from: i */
    public final C6082o3 m12646i(Throwable th, C5713e5 c5713e5, boolean z, int i) {
        int i2;
        if (c5713e5 != null && !this.f21333v) {
            this.f21333v = true;
            try {
                int mo10706d = mo10706d(c5713e5) & 7;
                this.f21333v = false;
                i2 = mo10706d;
            } catch (C6082o3 unused) {
                this.f21333v = false;
            } catch (Throwable th2) {
                this.f21333v = false;
                throw th2;
            }
            return C6082o3.m8909b(th, mo10707b(), this.f21326k, c5713e5, i2, z, i);
        }
        i2 = 4;
        return C6082o3.m8909b(th, mo10707b(), this.f21326k, c5713e5, i2, z, i);
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: j */
    public InterfaceC5794gb mo11257j() {
        return null;
    }

    /* renamed from: n */
    public void mo11538n(boolean z, boolean z2) {
    }

    /* renamed from: o */
    public abstract void mo10704o(long j, boolean z);

    /* renamed from: p */
    public void mo11537p() {
    }

    /* renamed from: q */
    public void mo11536q() {
    }

    /* renamed from: r */
    public abstract void mo10703r();

    /* renamed from: s */
    public void mo11535s() {
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: C */
    public final void mo11273C() {
        boolean z;
        if (this.f21327p == 2) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        this.f21327p = 1;
        mo11536q();
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: E */
    public final void mo11272E() {
        boolean z = true;
        if (this.f21327p != 1) {
            z = false;
        }
        C5903ja.m10371d(z);
        this.f21327p = 2;
        mo11537p();
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: R */
    public final void mo11268R() {
        boolean z;
        if (this.f21327p == 0) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        C5751f5 c5751f5 = this.f21324b;
        c5751f5.f23300b = null;
        c5751f5.f23299a = null;
        mo11535s();
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: S */
    public final void mo11267S(C5713e5[] c5713e5Arr, vu3 vu3Var, long j, long j2) {
        C5903ja.m10371d(!this.f21332u);
        this.f21328q = vu3Var;
        if (this.f21331t == Long.MIN_VALUE) {
            this.f21331t = j;
        }
        this.f21329r = c5713e5Arr;
        this.f21330s = j2;
        mo10705e(c5713e5Arr, j, j2);
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: b0 */
    public final void mo11259b0() {
        boolean z = true;
        if (this.f21327p != 1) {
            z = false;
        }
        C5903ja.m10371d(z);
        C5751f5 c5751f5 = this.f21324b;
        c5751f5.f23300b = null;
        c5751f5.f23299a = null;
        this.f21327p = 0;
        this.f21328q = null;
        this.f21329r = null;
        this.f21332u = false;
        mo10703r();
    }

    /* renamed from: k */
    public final int m12645k(C5751f5 c5751f5, C5861i4 c5861i4, int i) {
        vu3 vu3Var = this.f21328q;
        vu3Var.getClass();
        int mo5997d = vu3Var.mo5997d(c5751f5, c5861i4, i);
        if (mo5997d == -4) {
            if (c5861i4.m7890c()) {
                this.f21331t = Long.MIN_VALUE;
                if (this.f21332u) {
                    return -4;
                }
                return -3;
            }
            long j = c5861i4.f24960e + this.f21330s;
            c5861i4.f24960e = j;
            this.f21331t = Math.max(this.f21331t, j);
        } else if (mo5997d == -5) {
            C5713e5 c5713e5 = c5751f5.f23299a;
            c5713e5.getClass();
            if (c5713e5.f22818p != Long.MAX_VALUE) {
                C5639c5 c5639c5 = new C5639c5(c5713e5, null);
                c5639c5.m12560r(c5713e5.f22818p + this.f21330s);
                c5751f5.f23299a = new C5713e5(c5639c5);
                return -5;
            }
        }
        return mo5997d;
    }

    /* renamed from: l */
    public final int m12644l(long j) {
        vu3 vu3Var = this.f21328q;
        vu3Var.getClass();
        return vu3Var.mo5998c(j - this.f21330s);
    }

    @Override // p168r4.InterfaceC5790g7
    /* renamed from: t */
    public final void mo11256t() {
        vu3 vu3Var = this.f21328q;
        vu3Var.getClass();
        vu3Var.mo5999b();
    }

    /* renamed from: m */
    public final boolean m12643m() {
        if (mo11269H()) {
            return this.f21332u;
        }
        vu3 vu3Var = this.f21328q;
        vu3Var.getClass();
        return vu3Var.mo6000a();
    }
}
