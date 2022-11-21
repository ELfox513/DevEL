package p168r4;

import android.content.Context;
import p016b3.InterfaceC0549y1;
import p026c4.InterfaceC1045f;
/* renamed from: r4.oj0 */
/* loaded from: classes2.dex */
public final class oj0 extends jk0 {

    /* renamed from: b */
    public final InterfaceC1045f f29011b;

    /* renamed from: c */
    public final oj0 f29012c = this;

    /* renamed from: d */
    public final is3<Context> f29013d;

    /* renamed from: e */
    public final is3<InterfaceC0549y1> f29014e;

    /* renamed from: f */
    public final is3<ik0> f29015f;

    /* renamed from: g */
    public final is3<fj0> f29016g;

    /* renamed from: h */
    public final is3<InterfaceC1045f> f29017h;

    /* renamed from: i */
    public final is3<ij0> f29018i;

    /* renamed from: j */
    public final is3<kj0> f29019j;

    /* renamed from: k */
    public final is3<ok0> f29020k;

    @Override // p168r4.jk0
    /* renamed from: a */
    public final fj0 mo8791a() {
        return this.f29016g.mo4079a();
    }

    @Override // p168r4.jk0
    /* renamed from: b */
    public final kj0 mo8790b() {
        return new kj0(this.f29011b, this.f29018i.mo4079a());
    }

    @Override // p168r4.jk0
    /* renamed from: c */
    public final ok0 mo8789c() {
        return this.f29020k.mo4079a();
    }

    public /* synthetic */ oj0(Context context, InterfaceC1045f interfaceC1045f, InterfaceC0549y1 interfaceC0549y1, ik0 ik0Var, nj0 nj0Var) {
        this.f29011b = interfaceC1045f;
        vr3 m5603b = wr3.m5603b(context);
        this.f29013d = m5603b;
        vr3 m5603b2 = wr3.m5603b(interfaceC0549y1);
        this.f29014e = m5603b2;
        vr3 m5603b3 = wr3.m5603b(ik0Var);
        this.f29015f = m5603b3;
        this.f29016g = tr3.m6730b(new hj0(m5603b, m5603b2, m5603b3));
        vr3 m5603b4 = wr3.m5603b(interfaceC1045f);
        this.f29017h = m5603b4;
        is3<ij0> m6730b = tr3.m6730b(new jj0(m5603b4, m5603b2, m5603b3));
        this.f29018i = m6730b;
        lj0 lj0Var = new lj0(m5603b4, m6730b);
        this.f29019j = lj0Var;
        this.f29020k = tr3.m6730b(new pk0(m5603b, lj0Var));
    }
}
