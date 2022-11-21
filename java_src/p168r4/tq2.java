package p168r4;

import java.util.LinkedList;
import p235z2.C7601t;
/* renamed from: r4.tq2 */
/* loaded from: classes2.dex */
public final class tq2 {

    /* renamed from: b */
    public final int f31960b;

    /* renamed from: c */
    public final int f31961c;

    /* renamed from: a */
    public final LinkedList<dr2<?, ?>> f31959a = new LinkedList<>();

    /* renamed from: d */
    public final tr2 f31962d = new tr2();

    /* renamed from: d */
    public final long m6755d() {
        return this.f31962d.m6735d();
    }

    /* renamed from: e */
    public final long m6754e() {
        return this.f31962d.m6734e();
    }

    /* renamed from: f */
    public final int m6753f() {
        return this.f31962d.m6733f();
    }

    /* renamed from: g */
    public final String m6752g() {
        return this.f31962d.m6731h();
    }

    /* renamed from: h */
    public final rr2 m6751h() {
        return this.f31962d.m6732g();
    }

    /* renamed from: a */
    public final boolean m6758a(dr2<?, ?> dr2Var) {
        this.f31962d.m6738a();
        m6750i();
        if (this.f31959a.size() == this.f31960b) {
            return false;
        }
        this.f31959a.add(dr2Var);
        return true;
    }

    /* renamed from: b */
    public final dr2<?, ?> m6757b() {
        this.f31962d.m6738a();
        m6750i();
        if (this.f31959a.isEmpty()) {
            return null;
        }
        dr2<?, ?> remove = this.f31959a.remove();
        if (remove != null) {
            this.f31962d.m6737b();
        }
        return remove;
    }

    /* renamed from: i */
    public final void m6750i() {
        while (!this.f31959a.isEmpty() && C7601t.m932k().mo24763a() - this.f31959a.getFirst().f22413d >= this.f31961c) {
            this.f31962d.m6736c();
            this.f31959a.remove();
        }
    }

    public tq2(int i, int i2) {
        this.f31960b = i;
        this.f31961c = i2;
    }

    /* renamed from: c */
    public final int m6756c() {
        m6750i();
        return this.f31959a.size();
    }
}
