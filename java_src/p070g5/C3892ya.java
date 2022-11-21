package p070g5;

import p018b5.C0612d5;
import p018b5.C0644f3;
import p018b5.C0705id;
import p018b5.C0763m3;
/* renamed from: g5.ya */
/* loaded from: classes2.dex */
public final class C3892ya extends AbstractC3880xa {

    /* renamed from: g */
    public final C0763m3 f17118g;

    /* renamed from: h */
    public final /* synthetic */ C3904za f17119h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3892ya(C3904za c3904za, String str, int i, C0763m3 c0763m3) {
        super(str, i);
        this.f17119h = c3904za;
        this.f17118g = c0763m3;
    }

    @Override // p070g5.AbstractC3880xa
    /* renamed from: a */
    public final int mo17818a() {
        return this.f17118g.m25676s();
    }

    @Override // p070g5.AbstractC3880xa
    /* renamed from: b */
    public final boolean mo17817b() {
        return false;
    }

    @Override // p070g5.AbstractC3880xa
    /* renamed from: c */
    public final boolean mo17816c() {
        return true;
    }

    /* renamed from: k */
    public final boolean m17815k(Long l, Long l2, C0612d5 c0612d5, boolean z) {
        boolean z2;
        Object obj;
        C0705id.m25784b();
        boolean m18356w = this.f17119h.f17008a.m18513u().m18356w(this.f17084a, C3621c3.f16353Y);
        boolean m25670z = this.f17118g.m25670z();
        boolean m25680A = this.f17118g.m25680A();
        boolean m25679B = this.f17118g.m25679B();
        if (!m25670z && !m25680A && !m25679B) {
            z2 = false;
        } else {
            z2 = true;
        }
        Boolean bool = null;
        Integer num = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        if (z && !z2) {
            C3765o3 m18014q = this.f17119h.f17008a.mo17858F().m18014q();
            Integer valueOf = Integer.valueOf(this.f17085b);
            if (this.f17118g.m25678C()) {
                num = Integer.valueOf(this.f17118g.m25676s());
            }
            m18014q.m18040c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", valueOf, num);
            return true;
        }
        C0644f3 m25675t = this.f17118g.m25675t();
        boolean m25998z = m25675t.m25998z();
        if (c0612d5.m26064J()) {
            if (!m25675t.m26007B()) {
                this.f17119h.f17008a.mo17858F().m18013r().m18041b("No number filter for long property. property", this.f17119h.f17008a.m18509y().m18071f(c0612d5.m26056x()));
            } else {
                bool = AbstractC3880xa.m17844j(AbstractC3880xa.m17846h(c0612d5.m26060t(), m25675t.m26002u()), m25998z);
            }
        } else if (c0612d5.m26065I()) {
            if (!m25675t.m26007B()) {
                this.f17119h.f17008a.mo17858F().m18013r().m18041b("No number filter for double property. property", this.f17119h.f17008a.m18509y().m18071f(c0612d5.m26056x()));
            } else {
                bool = AbstractC3880xa.m17844j(AbstractC3880xa.m17847g(c0612d5.m26061s(), m25675t.m26002u()), m25998z);
            }
        } else if (c0612d5.m26062L()) {
            if (!m25675t.m26005D()) {
                if (!m25675t.m26007B()) {
                    this.f17119h.f17008a.mo17858F().m18013r().m18041b("No string or number filter defined. property", this.f17119h.f17008a.m18509y().m18071f(c0612d5.m26056x()));
                } else if (C3640da.m18409M(c0612d5.m26055z())) {
                    bool = AbstractC3880xa.m17844j(AbstractC3880xa.m17845i(c0612d5.m26055z(), m25675t.m26002u()), m25998z);
                } else {
                    this.f17119h.f17008a.mo17858F().m18013r().m18040c("Invalid user property value for Numeric number filter. property, value", this.f17119h.f17008a.m18509y().m18071f(c0612d5.m26056x()), c0612d5.m26055z());
                }
            } else {
                bool = AbstractC3880xa.m17844j(AbstractC3880xa.m17848f(c0612d5.m26055z(), m25675t.m26001v(), this.f17119h.f17008a.mo17858F()), m25998z);
            }
        } else {
            this.f17119h.f17008a.mo17858F().m18013r().m18041b("User property has no value, property", this.f17119h.f17008a.m18509y().m18071f(c0612d5.m26056x()));
        }
        C3765o3 m18014q2 = this.f17119h.f17008a.mo17858F().m18014q();
        if (bool == null) {
            obj = "null";
        } else {
            obj = bool;
        }
        m18014q2.m18041b("Property filter result", obj);
        if (bool == null) {
            return false;
        }
        this.f17086c = Boolean.TRUE;
        if (m25679B && !bool.booleanValue()) {
            return true;
        }
        if (!z || this.f17118g.m25670z()) {
            this.f17087d = bool;
        }
        if (bool.booleanValue() && z2 && c0612d5.m26063K()) {
            long m26059u = c0612d5.m26059u();
            if (l != null) {
                m26059u = l.longValue();
            }
            if (m18356w && this.f17118g.m25670z() && !this.f17118g.m25680A() && l2 != null) {
                m26059u = l2.longValue();
            }
            if (this.f17118g.m25680A()) {
                this.f17089f = Long.valueOf(m26059u);
            } else {
                this.f17088e = Long.valueOf(m26059u);
            }
        }
        return true;
    }
}
