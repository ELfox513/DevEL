package p168r4;
/* renamed from: r4.z14 */
/* loaded from: classes2.dex */
public final class z14 implements a04 {

    /* renamed from: b */
    public d04 f34293b;

    /* renamed from: c */
    public int f34294c;

    /* renamed from: d */
    public int f34295d;

    /* renamed from: e */
    public int f34296e;

    /* renamed from: g */
    public C5681da f34298g;

    /* renamed from: h */
    public b04 f34299h;

    /* renamed from: i */
    public c24 f34300i;

    /* renamed from: j */
    public y34 f34301j;

    /* renamed from: a */
    public final C6423xb f34292a = new C6423xb(6);

    /* renamed from: f */
    public long f34297f = -1;

    /* renamed from: b */
    public final void m4477b() {
        m4476c(new InterfaceC5865i8[0]);
        d04 d04Var = this.f34293b;
        d04Var.getClass();
        d04Var.mo10788y();
        this.f34293b.mo10798j(new y04(-9223372036854775807L, 0L));
        this.f34294c = 6;
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f34293b = d04Var;
    }

    /* renamed from: a */
    public final int m4478a(b04 b04Var) {
        this.f34292a.m5410i(2);
        ((vz3) b04Var).mo5960i(this.f34292a.m5402q(), 0, 2, false);
        return this.f34292a.m5396w();
    }

    /* renamed from: c */
    public final void m4476c(InterfaceC5865i8... interfaceC5865i8Arr) {
        d04 d04Var = this.f34293b;
        d04Var.getClass();
        d14 mo10795r = d04Var.mo10795r(1024, 4);
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12565m("image/jpeg");
        c5639c5.m12566l(new C5901j8(interfaceC5865i8Arr));
        mo10795r.mo4004f(c5639c5.m12603I());
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x015e  */
    @Override // p168r4.a04
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4474f(p168r4.b04 r24, p168r4.w04 r25) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.z14.mo4474f(r4.b04, r4.w04):int");
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        if (j == 0) {
            this.f34294c = 0;
            this.f34301j = null;
        } else if (this.f34294c == 5) {
            y34 y34Var = this.f34301j;
            y34Var.getClass();
            y34Var.mo4472i(j, j2);
        }
    }

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        if (m4478a(b04Var) != 65496) {
            return false;
        }
        int m4478a = m4478a(b04Var);
        this.f34295d = m4478a;
        if (m4478a == 65504) {
            this.f34292a.m5410i(2);
            vz3 vz3Var = (vz3) b04Var;
            vz3Var.mo5960i(this.f34292a.m5402q(), 0, 2, false);
            vz3Var.m5955o(this.f34292a.m5396w() - 2, false);
            m4478a = m4478a(b04Var);
            this.f34295d = m4478a;
        }
        if (m4478a == 65505) {
            vz3 vz3Var2 = (vz3) b04Var;
            vz3Var2.m5955o(2, false);
            this.f34292a.m5410i(6);
            vz3Var2.mo5960i(this.f34292a.m5402q(), 0, 6, false);
            if (this.f34292a.m5425B() == 1165519206 && this.f34292a.m5396w() == 0) {
                return true;
            }
        }
        return false;
    }
}
