package p168r4;
/* renamed from: r4.jp3 */
/* loaded from: classes2.dex */
public final class jp3 extends hp3<ip3, ip3> {
    @Override // p168r4.hp3
    /* renamed from: a */
    public final boolean mo10225a(lo3 lo3Var) {
        return false;
    }

    @Override // p168r4.hp3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10224b(ip3 ip3Var, int i, long j) {
        ip3Var.m10565h(i << 3, Long.valueOf(j));
    }

    @Override // p168r4.hp3
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void mo10223c(ip3 ip3Var, int i, int i2) {
        ip3Var.m10565h((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // p168r4.hp3
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo10222d(ip3 ip3Var, int i, long j) {
        ip3Var.m10565h((i << 3) | 1, Long.valueOf(j));
    }

    @Override // p168r4.hp3
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ void mo10221e(ip3 ip3Var, int i, ll3 ll3Var) {
        ip3Var.m10565h((i << 3) | 2, ll3Var);
    }

    @Override // p168r4.hp3
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ void mo10220f(ip3 ip3Var, int i, ip3 ip3Var2) {
        ip3Var.m10565h((i << 3) | 3, ip3Var2);
    }

    @Override // p168r4.hp3
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ ip3 mo10219g() {
        return ip3.m10571b();
    }

    @Override // p168r4.hp3
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ ip3 mo10218h(ip3 ip3Var) {
        ip3 ip3Var2 = ip3Var;
        ip3Var2.m10569d();
        return ip3Var2;
    }

    @Override // p168r4.hp3
    /* renamed from: i */
    public final /* bridge */ /* synthetic */ void mo10217i(Object obj, ip3 ip3Var) {
        ((pm3) obj).zzc = ip3Var;
    }

    @Override // p168r4.hp3
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ ip3 mo10216j(Object obj) {
        return ((pm3) obj).zzc;
    }

    @Override // p168r4.hp3
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo10214l(Object obj, ip3 ip3Var) {
        ((pm3) obj).zzc = ip3Var;
    }

    @Override // p168r4.hp3
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ int mo10211p(ip3 ip3Var) {
        return ip3Var.m10568e();
    }

    @Override // p168r4.hp3
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ int mo10210q(ip3 ip3Var) {
        return ip3Var.m10567f();
    }

    @Override // p168r4.hp3
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ void mo10209r(ip3 ip3Var, xl3 xl3Var) {
        ip3Var.m10564i(xl3Var);
    }

    @Override // p168r4.hp3
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ ip3 mo10215k(Object obj) {
        pm3 pm3Var = (pm3) obj;
        ip3 ip3Var = pm3Var.zzc;
        if (ip3Var == ip3.m10572a()) {
            ip3 m10571b = ip3.m10571b();
            pm3Var.zzc = m10571b;
            return m10571b;
        }
        return ip3Var;
    }

    @Override // p168r4.hp3
    /* renamed from: m */
    public final void mo10213m(Object obj) {
        ((pm3) obj).zzc.m10569d();
    }

    @Override // p168r4.hp3
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ ip3 mo10212o(ip3 ip3Var, ip3 ip3Var2) {
        ip3 ip3Var3 = ip3Var2;
        if (ip3Var3.equals(ip3.m10572a())) {
            return ip3Var;
        }
        return ip3.m10570c(ip3Var, ip3Var3);
    }
}
