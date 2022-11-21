package p168r4;
/* renamed from: r4.eo3 */
/* loaded from: classes2.dex */
public final class eo3<T> implements ro3<T> {

    /* renamed from: a */
    public final ao3 f23105a;

    /* renamed from: b */
    public final hp3<?, ?> f23106b;

    /* renamed from: c */
    public final boolean f23107c;

    /* renamed from: d */
    public final cm3<?> f23108d;

    public eo3(hp3<?, ?> hp3Var, cm3<?> cm3Var, ao3 ao3Var) {
        this.f23106b = hp3Var;
        this.f23107c = cm3Var.mo12095a(ao3Var);
        this.f23108d = cm3Var;
        this.f23105a = ao3Var;
    }

    /* renamed from: b */
    public static <T> eo3<T> m11700b(hp3<?, ?> hp3Var, cm3<?> cm3Var, ao3 ao3Var) {
        return new eo3<>(hp3Var, cm3Var, ao3Var);
    }

    @Override // p168r4.ro3
    /* renamed from: h */
    public final void mo7406h(T t, byte[] bArr, int i, int i2, xk3 xk3Var) {
        pm3 pm3Var = (pm3) t;
        if (pm3Var.zzc == ip3.m10572a()) {
            pm3Var.zzc = ip3.m10571b();
        }
        mm3 mm3Var = (mm3) t;
        throw null;
    }

    @Override // p168r4.ro3
    public final T zza() {
        return (T) this.f23105a.mo8267b().mo4160H();
    }

    @Override // p168r4.ro3
    /* renamed from: a */
    public final boolean mo7412a(T t) {
        this.f23108d.mo12094b(t);
        throw null;
    }

    @Override // p168r4.ro3
    /* renamed from: c */
    public final boolean mo7411c(T t, T t2) {
        if (!this.f23106b.mo10216j(t).equals(this.f23106b.mo10216j(t2))) {
            return false;
        }
        if (!this.f23107c) {
            return true;
        }
        this.f23108d.mo12094b(t);
        this.f23108d.mo12094b(t2);
        throw null;
    }

    @Override // p168r4.ro3
    /* renamed from: d */
    public final int mo7410d(T t) {
        hp3<?, ?> hp3Var = this.f23106b;
        int mo10211p = hp3Var.mo10211p(hp3Var.mo10216j(t));
        if (!this.f23107c) {
            return mo10211p;
        }
        this.f23108d.mo12094b(t);
        throw null;
    }

    @Override // p168r4.ro3
    /* renamed from: e */
    public final void mo7409e(T t) {
        this.f23106b.mo10213m(t);
        this.f23108d.mo12092d(t);
    }

    @Override // p168r4.ro3
    /* renamed from: f */
    public final void mo7408f(T t, xl3 xl3Var) {
        this.f23108d.mo12094b(t);
        throw null;
    }

    @Override // p168r4.ro3
    /* renamed from: g */
    public final void mo7407g(T t, T t2) {
        uo3.m6426f(this.f23106b, t, t2);
        if (this.f23107c) {
            uo3.m6427e(this.f23108d, t, t2);
        }
    }

    @Override // p168r4.ro3
    /* renamed from: i */
    public final int mo7405i(T t) {
        int hashCode = this.f23106b.mo10216j(t).hashCode();
        if (!this.f23107c) {
            return hashCode;
        }
        this.f23108d.mo12094b(t);
        throw null;
    }

    @Override // p168r4.ro3
    /* renamed from: j */
    public final void mo7404j(T t, lo3 lo3Var, bm3 bm3Var) {
        boolean mo7120e;
        hp3<?, ?> hp3Var = this.f23106b;
        cm3<?> cm3Var = this.f23108d;
        Object mo10215k = hp3Var.mo10215k(t);
        gm3<?> mo12093c = cm3Var.mo12093c(t);
        while (lo3Var.mo7124a() != Integer.MAX_VALUE) {
            try {
                int mo7123b = lo3Var.mo7123b();
                if (mo7123b != 11) {
                    if ((mo7123b & 7) == 2) {
                        Object mo12090f = cm3Var.mo12090f(bm3Var, this.f23105a, mo7123b >>> 3);
                        if (mo12090f != null) {
                            cm3Var.mo12089g(lo3Var, mo12090f, bm3Var, mo12093c);
                        } else {
                            mo7120e = hp3Var.m10834n(mo10215k, lo3Var);
                        }
                    } else {
                        mo7120e = lo3Var.mo7120e();
                    }
                    if (!mo7120e) {
                        return;
                    }
                } else {
                    int i = 0;
                    Object obj = null;
                    ll3 ll3Var = null;
                    while (lo3Var.mo7124a() != Integer.MAX_VALUE) {
                        int mo7123b2 = lo3Var.mo7123b();
                        if (mo7123b2 == 16) {
                            i = lo3Var.mo7102w();
                            obj = cm3Var.mo12090f(bm3Var, this.f23105a, i);
                        } else if (mo7123b2 == 26) {
                            if (obj != null) {
                                cm3Var.mo12089g(lo3Var, obj, bm3Var, mo12093c);
                            } else {
                                ll3Var = lo3Var.mo7112m();
                            }
                        } else if (!lo3Var.mo7120e()) {
                            break;
                        }
                    }
                    if (lo3Var.mo7123b() == 12) {
                        if (ll3Var != null) {
                            if (obj != null) {
                                cm3Var.mo12088h(ll3Var, obj, bm3Var, mo12093c);
                            } else {
                                hp3Var.mo10221e(mo10215k, i, ll3Var);
                            }
                        }
                    } else {
                        throw bn3.m12736h();
                    }
                }
            } finally {
                hp3Var.mo10214l(t, mo10215k);
            }
        }
    }
}
