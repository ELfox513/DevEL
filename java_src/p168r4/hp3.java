package p168r4;
/* renamed from: r4.hp3 */
/* loaded from: classes2.dex */
public abstract class hp3<T, B> {
    /* renamed from: a */
    public abstract boolean mo10225a(lo3 lo3Var);

    /* renamed from: b */
    public abstract void mo10224b(B b, int i, long j);

    /* renamed from: c */
    public abstract void mo10223c(B b, int i, int i2);

    /* renamed from: d */
    public abstract void mo10222d(B b, int i, long j);

    /* renamed from: e */
    public abstract void mo10221e(B b, int i, ll3 ll3Var);

    /* renamed from: f */
    public abstract void mo10220f(B b, int i, T t);

    /* renamed from: g */
    public abstract B mo10219g();

    /* renamed from: h */
    public abstract T mo10218h(B b);

    /* renamed from: i */
    public abstract void mo10217i(Object obj, T t);

    /* renamed from: j */
    public abstract T mo10216j(Object obj);

    /* renamed from: k */
    public abstract B mo10215k(Object obj);

    /* renamed from: l */
    public abstract void mo10214l(Object obj, B b);

    /* renamed from: m */
    public abstract void mo10213m(Object obj);

    /* renamed from: o */
    public abstract T mo10212o(T t, T t2);

    /* renamed from: p */
    public abstract int mo10211p(T t);

    /* renamed from: q */
    public abstract int mo10210q(T t);

    /* renamed from: r */
    public abstract void mo10209r(T t, xl3 xl3Var);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public final boolean m10834n(B b, lo3 lo3Var) {
        int mo7123b = lo3Var.mo7123b();
        int i = mo7123b >>> 3;
        int i2 = mo7123b & 7;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                mo10223c(b, i, lo3Var.mo7116i());
                                return true;
                            }
                            throw bn3.m12735i();
                        }
                        return false;
                    }
                    Object mo10219g = mo10219g();
                    int i3 = 4 | (i << 3);
                    while (lo3Var.mo7124a() != Integer.MAX_VALUE && m10834n(mo10219g, lo3Var)) {
                    }
                    if (i3 == lo3Var.mo7123b()) {
                        mo10218h(mo10219g);
                        mo10220f(b, i, mo10219g);
                        return true;
                    }
                    throw bn3.m12736h();
                }
                mo10221e(b, i, lo3Var.mo7112m());
                return true;
            }
            mo10222d(b, i, lo3Var.mo7117h());
            return true;
        }
        mo10224b(b, i, lo3Var.mo7119f());
        return true;
    }
}
