package p168r4;

import android.os.Parcelable;
import com.prineside.tdi2.tiles.CoreTile;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p235z2.C7601t;
/* renamed from: r4.vq2 */
/* loaded from: classes2.dex */
public final class vq2 implements uq2 {

    /* renamed from: a */
    public final ConcurrentHashMap<er2, tq2> f32779a;

    /* renamed from: b */
    public final br2 f32780b;

    /* renamed from: c */
    public final xq2 f32781c = new xq2();

    @Override // p168r4.uq2
    /* renamed from: b */
    public final synchronized boolean mo6036b(er2 er2Var) {
        tq2 tq2Var = this.f32779a.get(er2Var);
        if (tq2Var == null) {
            return true;
        }
        if (tq2Var.m6756c() < this.f32780b.f21183q) {
            return true;
        }
        return false;
    }

    @Override // p168r4.uq2
    /* renamed from: c */
    public final br2 mo6035c() {
        return this.f32780b;
    }

    @Override // p168r4.uq2
    /* renamed from: d */
    public final synchronized boolean mo6034d(er2 er2Var, dr2<?, ?> dr2Var) {
        boolean m6758a;
        tq2 tq2Var = this.f32779a.get(er2Var);
        dr2Var.f22413d = C7601t.m932k().mo24763a();
        if (tq2Var == null) {
            br2 br2Var = this.f32780b;
            tq2Var = new tq2(br2Var.f21183q, br2Var.f21184r * CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
            int size = this.f32779a.size();
            br2 br2Var2 = this.f32780b;
            if (size == br2Var2.f21182p) {
                int i = br2Var2.f21190x;
                int i2 = i - 1;
                er2 er2Var2 = null;
                if (i != 0) {
                    long j = Long.MAX_VALUE;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 == 2) {
                                int i3 = Integer.MAX_VALUE;
                                for (Map.Entry<er2, tq2> entry : this.f32779a.entrySet()) {
                                    if (entry.getValue().m6753f() < i3) {
                                        i3 = entry.getValue().m6753f();
                                        er2Var2 = entry.getKey();
                                    }
                                }
                                if (er2Var2 != null) {
                                    this.f32779a.remove(er2Var2);
                                }
                            }
                        } else {
                            for (Map.Entry<er2, tq2> entry2 : this.f32779a.entrySet()) {
                                if (entry2.getValue().m6754e() < j) {
                                    j = entry2.getValue().m6754e();
                                    er2Var2 = entry2.getKey();
                                }
                            }
                            if (er2Var2 != null) {
                                this.f32779a.remove(er2Var2);
                            }
                        }
                    } else {
                        for (Map.Entry<er2, tq2> entry3 : this.f32779a.entrySet()) {
                            if (entry3.getValue().m6755d() < j) {
                                j = entry3.getValue().m6755d();
                                er2Var2 = entry3.getKey();
                            }
                        }
                        if (er2Var2 != null) {
                            this.f32779a.remove(er2Var2);
                        }
                    }
                    this.f32781c.m5165d();
                } else {
                    throw null;
                }
            }
            this.f32779a.put(er2Var, tq2Var);
            this.f32781c.m5166c();
        }
        m6758a = tq2Var.m6758a(dr2Var);
        this.f32781c.m5164e();
        wq2 m5163f = this.f32781c.m5163f();
        rr2 m6751h = tq2Var.m6751h();
        C6363vp m12730C = C5624bq.m12730C();
        C6289tp m6405C = C6326up.m6405C();
        m6405C.m6766A(2);
        C6511zp m12977C = C5587aq.m12977C();
        m12977C.m4154v(m5163f.f33290a);
        m12977C.m4153x(m5163f.f33291b);
        m12977C.m4152z(m6751h.f30672b);
        m6405C.m6763z(m12977C);
        m12730C.m6042v(m6405C);
        dr2Var.f22410a.mo7604r().m9500e().mo5887A(m12730C.m9614o());
        m6032f();
        return m6758a;
    }

    @Override // p168r4.uq2
    /* renamed from: e */
    public final synchronized dr2<?, ?> mo6033e(er2 er2Var) {
        dr2<?, ?> dr2Var;
        tq2 tq2Var = this.f32779a.get(er2Var);
        if (tq2Var != null) {
            dr2Var = tq2Var.m6757b();
            if (dr2Var == null) {
                this.f32781c.m5167b();
            }
            rr2 m6751h = tq2Var.m6751h();
            if (dr2Var != null) {
                C6363vp m12730C = C5624bq.m12730C();
                C6289tp m6405C = C6326up.m6405C();
                m6405C.m6766A(2);
                C6437xp m4621C = C6474yp.m4621C();
                m4621C.m5236v(m6751h.f30671a);
                m4621C.m5235x(m6751h.f30672b);
                m6405C.m6764x(m4621C);
                m12730C.m6042v(m6405C);
                dr2Var.f22410a.mo7604r().m9500e().mo5880v(m12730C.m9614o());
            }
            m6032f();
        } else {
            this.f32781c.m5168a();
            m6032f();
            dr2Var = null;
        }
        return dr2Var;
    }

    @Override // p168r4.uq2
    @Deprecated
    /* renamed from: a */
    public final er2 mo6037a(C6293tt c6293tt, String str, C5739eu c5739eu) {
        return new fr2(c6293tt, str, new sg0(this.f32780b.f21179b).m7168a().f31850k, this.f32780b.f21185s, c5739eu);
    }

    /* renamed from: f */
    public final void m6032f() {
        Parcelable.Creator<br2> creator = br2.CREATOR;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30811G4)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f32780b.f21181k);
            sb.append(" PoolCollection");
            sb.append(this.f32781c.m5162g());
            int i = 0;
            for (Map.Entry<er2, tq2> entry : this.f32779a.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(entry.getKey().hashCode());
                sb.append("    ");
                for (int i2 = 0; i2 < entry.getValue().m6756c(); i2++) {
                    sb.append("[O]");
                }
                for (int m6756c = entry.getValue().m6756c(); m6756c < this.f32780b.f21183q; m6756c++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(entry.getValue().m6752g());
                sb.append("\n");
            }
            while (i < this.f32780b.f21182p) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            cm0.m12442a(sb.toString());
        }
    }

    public vq2(br2 br2Var) {
        this.f32779a = new ConcurrentHashMap<>(br2Var.f21183q);
        this.f32780b = br2Var;
    }
}
