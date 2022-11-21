package p168r4;

import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* renamed from: r4.ev0 */
/* loaded from: classes2.dex */
public final class ev0 extends xg2 {

    /* renamed from: a */
    public final fi2 f23154a;

    /* renamed from: b */
    public final ow0 f23155b;

    /* renamed from: c */
    public final ev0 f23156c = this;

    /* renamed from: d */
    public final is3<Integer> f23157d;

    /* renamed from: e */
    public final is3<ug2> f23158e;

    /* renamed from: f */
    public final is3<String> f23159f;

    /* renamed from: g */
    public final is3<dh2> f23160g;

    /* renamed from: h */
    public final is3<kh2> f23161h;

    /* renamed from: i */
    public final is3<oh2> f23162i;

    /* renamed from: j */
    public final is3<vh2> f23163j;

    /* renamed from: k */
    public final is3<ci2> f23164k;

    /* renamed from: l */
    public final is3<vi2> f23165l;

    /* renamed from: m */
    public final is3<Boolean> f23166m;

    /* renamed from: n */
    public final is3<ri2> f23167n;

    /* renamed from: o */
    public final is3<String> f23168o;

    /* renamed from: p */
    public final is3<sr1> f23169p;

    /* renamed from: q */
    public final is3<sr1> f23170q;

    /* renamed from: r */
    public final is3<sr1> f23171r;

    /* renamed from: s */
    public final is3<sr1> f23172s;

    /* renamed from: t */
    public final is3<Map<gt2, sr1>> f23173t;

    /* renamed from: u */
    public final is3<Set<ve1<nt2>>> f23174u;

    /* renamed from: v */
    public final is3<Set<ve1<nt2>>> f23175v;

    /* renamed from: w */
    public final is3 f23176w;

    /* renamed from: x */
    public final is3<mt2> f23177x;

    @Override // p168r4.xg2
    /* renamed from: c */
    public final mt2 mo5315c() {
        return this.f23177x.mo4079a();
    }

    public /* synthetic */ ev0(ow0 ow0Var, fi2 fi2Var, fw0 fw0Var) {
        qx0 qx0Var;
        is3 is3Var;
        is3 is3Var2;
        tu0 tu0Var;
        is3 is3Var3;
        qx0 qx0Var2;
        is3 is3Var4;
        is3 is3Var5;
        is3 is3Var6;
        kx0 kx0Var;
        is3 is3Var7;
        mx0 mx0Var;
        ox0 ox0Var;
        is3 is3Var8;
        is3 is3Var9;
        is3 is3Var10;
        sx0 sx0Var;
        is3 is3Var11;
        is3 is3Var12;
        is3 is3Var13;
        this.f23155b = ow0Var;
        this.f23154a = fi2Var;
        hi2 hi2Var = new hi2(fi2Var);
        this.f23157d = hi2Var;
        qx0Var = px0.f29841a;
        is3Var = ow0Var.f29221i;
        is3Var2 = ow0Var.f29233o;
        this.f23158e = new wg2(qx0Var, is3Var, is3Var2, hs2.m10826b(), hi2Var);
        gi2 gi2Var = new gi2(fi2Var);
        this.f23159f = gi2Var;
        tu0Var = ru0.f30689a;
        is3Var3 = ow0Var.f29221i;
        this.f23160g = new fh2(tu0Var, is3Var3, gi2Var, hs2.m10826b());
        qx0Var2 = px0.f29841a;
        is3Var4 = ow0Var.f29221i;
        is3Var5 = ow0Var.f29205Z;
        is3Var6 = ow0Var.f29233o;
        this.f23161h = new mh2(qx0Var2, hi2Var, is3Var4, is3Var5, is3Var6, hs2.m10826b(), gi2Var);
        kx0Var = jx0.f26167a;
        hs2 m10826b = hs2.m10826b();
        is3Var7 = ow0Var.f29221i;
        this.f23162i = new qh2(kx0Var, m10826b, is3Var7);
        mx0Var = lx0.f27412a;
        this.f23163j = new xh2(mx0Var, hs2.m10826b(), gi2Var);
        ox0Var = nx0.f28706a;
        is3Var8 = ow0Var.f29233o;
        is3Var9 = ow0Var.f29221i;
        this.f23164k = new ei2(ox0Var, is3Var8, is3Var9);
        this.f23165l = new xi2(hs2.m10826b());
        ji2 ji2Var = new ji2(fi2Var);
        this.f23166m = ji2Var;
        is3Var10 = ow0Var.f29205Z;
        sx0Var = rx0.f30741a;
        hs2 m10826b2 = hs2.m10826b();
        is3Var11 = ow0Var.f29233o;
        this.f23167n = new ti2(is3Var10, ji2Var, sx0Var, m10826b2, gi2Var, is3Var11);
        ki2 ki2Var = new ki2(fi2Var);
        this.f23168o = ki2Var;
        is3<sr1> m6730b = tr3.m6730b(lr1.m9576b());
        this.f23169p = m6730b;
        is3<sr1> m6730b2 = tr3.m6730b(jr1.m10205b());
        this.f23170q = m6730b2;
        is3<sr1> m6730b3 = tr3.m6730b(nr1.m9002b());
        this.f23171r = m6730b3;
        is3<sr1> m6730b4 = tr3.m6730b(pr1.m8219b());
        this.f23172s = m6730b4;
        yr3 m4089c = zr3.m4089c(4);
        m4089c.m4592b(gt2.GMS_SIGNALS, m6730b);
        m4089c.m4592b(gt2.BUILD_URL, m6730b2);
        m4089c.m4592b(gt2.HTTP, m6730b3);
        m4089c.m4592b(gt2.PRE_PROCESS, m6730b4);
        zr3 m4591c = m4089c.m4591c();
        this.f23173t = m4591c;
        is3Var12 = ow0Var.f29221i;
        is3<Set<ve1<nt2>>> m6730b5 = tr3.m6730b(new qr1(ki2Var, is3Var12, hs2.m10826b(), m4591c));
        this.f23174u = m6730b5;
        fs3 m11056b = gs3.m11056b(0, 1);
        m11056b.m11374b(m6730b5);
        gs3 m11373c = m11056b.m11373c();
        this.f23175v = m11373c;
        pt2 pt2Var = new pt2(m11373c);
        this.f23176w = pt2Var;
        hs2 m10826b3 = hs2.m10826b();
        is3Var13 = ow0Var.f29233o;
        this.f23177x = tr3.m6730b(new ot2(m10826b3, is3Var13, pt2Var));
    }

    @Override // p168r4.xg2
    /* renamed from: a */
    public final ig2<JSONObject> mo5317a() {
        is3 is3Var;
        is3 is3Var2;
        eu0 eu0Var;
        is3 is3Var3;
        eu0 eu0Var2;
        is3 is3Var4;
        is3 is3Var5;
        is3 is3Var6;
        eu0 eu0Var3;
        eu0 eu0Var4;
        eu0 eu0Var5;
        is3 is3Var7;
        is3 is3Var8;
        is3 is3Var9;
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        bl0 bl0Var = new bl0();
        ds3.m11980b(i83Var);
        String m11515a = this.f23154a.m11515a();
        ds3.m11980b(m11515a);
        vh2 vh2Var = new vh2(bl0Var, i83Var, m11515a, null);
        is3Var = this.f23155b.f29233o;
        ne2 ne2Var = new ne2(vh2Var, 0L, (ScheduledExecutorService) is3Var.mo4079a());
        af0 af0Var = new af0();
        is3Var2 = this.f23155b.f29233o;
        eu0Var = this.f23155b.f29207b;
        Context m11680a = eu0Var.m11680a();
        ds3.m11980b(m11680a);
        ci2 ci2Var = new ci2(af0Var, (ScheduledExecutorService) is3Var2.mo4079a(), m11680a, null);
        is3Var3 = this.f23155b.f29233o;
        ne2 ne2Var2 = new ne2(ci2Var, ((Long) C5592av.m12935c().m8098c(C6225rz.f31164y2)).longValue(), (ScheduledExecutorService) is3Var3.mo4079a());
        el0 el0Var = new el0();
        eu0Var2 = this.f23155b.f29207b;
        Context m11680a2 = eu0Var2.m11680a();
        ds3.m11980b(m11680a2);
        is3Var4 = this.f23155b.f29233o;
        ds3.m11980b(i83Var);
        ug2 ug2Var = new ug2(el0Var, m11680a2, (ScheduledExecutorService) is3Var4.mo4079a(), i83Var, this.f23154a.m11510f(), null);
        is3Var5 = this.f23155b.f29233o;
        ne2 ne2Var3 = new ne2(ug2Var, 0L, (ScheduledExecutorService) is3Var5.mo4079a());
        ds3.m11980b(i83Var);
        vi2 vi2Var = new vi2(i83Var);
        is3Var6 = this.f23155b.f29233o;
        ne2 ne2Var4 = new ne2(vi2Var, 0L, (ScheduledExecutorService) is3Var6.mo4079a());
        eg2<? extends dg2<JSONObject>> m9086a = ni2.m9086a();
        eu0Var3 = this.f23155b.f29207b;
        Context m11680a3 = eu0Var3.m11680a();
        ds3.m11980b(m11680a3);
        String m11515a2 = this.f23154a.m11515a();
        ds3.m11980b(m11515a2);
        ds3.m11980b(i83Var);
        dh2 dh2Var = new dh2(null, m11680a3, m11515a2, i83Var);
        C6399wo c6399wo = new C6399wo();
        ds3.m11980b(i83Var);
        eu0Var4 = this.f23155b.f29207b;
        Context m11680a4 = eu0Var4.m11680a();
        ds3.m11980b(m11680a4);
        el0 el0Var2 = new el0();
        int m11510f = this.f23154a.m11510f();
        eu0Var5 = this.f23155b.f29207b;
        Context m11680a5 = eu0Var5.m11680a();
        ds3.m11980b(m11680a5);
        is3Var7 = this.f23155b.f29205Z;
        nl0 nl0Var = (nl0) is3Var7.mo4079a();
        is3Var8 = this.f23155b.f29233o;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) is3Var8.mo4079a();
        ds3.m11980b(i83Var);
        String m11515a3 = this.f23154a.m11515a();
        ds3.m11980b(m11515a3);
        is3Var9 = this.f23155b.f29252x0;
        return new ig2<>(i83Var, y33.m4916q(ne2Var, ne2Var2, ne2Var3, ne2Var4, m9086a, dh2Var, new oh2(c6399wo, i83Var, m11680a4, null), m11671d(), m11670e(), new kh2(el0Var2, m11510f, m11680a5, nl0Var, scheduledExecutorService, i83Var, m11515a3, null), (eg2) is3Var9.mo4079a()));
    }

    @Override // p168r4.xg2
    /* renamed from: b */
    public final ig2<JSONObject> mo5316b() {
        is3 is3Var;
        is3 is3Var2;
        bl0 bl0Var = new bl0();
        cl0 cl0Var = new cl0();
        is3Var = this.f23155b.f29252x0;
        Object mo4079a = is3Var.mo4079a();
        ah2 m11670e = m11670e();
        zh2 m11671d = m11671d();
        or3 m6729c = tr3.m6729c(this.f23158e);
        or3 m6729c2 = tr3.m6729c(this.f23160g);
        or3 m6729c3 = tr3.m6729c(this.f23161h);
        or3 m6729c4 = tr3.m6729c(this.f23162i);
        or3 m6729c5 = tr3.m6729c(this.f23163j);
        or3 m6729c6 = tr3.m6729c(this.f23164k);
        or3 m6729c7 = tr3.m6729c(this.f23165l);
        or3 m6729c8 = tr3.m6729c(this.f23167n);
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        is3Var2 = this.f23155b.f29233o;
        return oi2.m8792b(bl0Var, cl0Var, mo4079a, m11670e, m11671d, m6729c, m6729c2, m6729c3, m6729c4, m6729c5, m6729c6, m6729c7, m6729c8, i83Var, (ScheduledExecutorService) is3Var2.mo4079a());
    }

    /* renamed from: d */
    public final zh2 m11671d() {
        C5632bz c5632bz = new C5632bz();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        List<String> m11512d = this.f23154a.m11512d();
        ds3.m11980b(m11512d);
        return new zh2(c5632bz, i83Var, m11512d, null);
    }

    /* renamed from: e */
    public final ah2 m11670e() {
        el0 el0Var = new el0();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        String m11514b = this.f23154a.m11514b();
        ds3.m11980b(m11514b);
        return new ah2(el0Var, i83Var, m11514b, this.f23154a.m11513c(), this.f23154a.m11510f(), null);
    }
}
