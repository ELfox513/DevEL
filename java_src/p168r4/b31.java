package p168r4;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* renamed from: r4.b31 */
/* loaded from: classes2.dex */
public final class b31 {

    /* renamed from: a */
    public final C5606b8 f20821a;

    /* renamed from: b */
    public o33<ft3> f20822b = o33.m8900q();

    /* renamed from: c */
    public s33<ft3, AbstractC5717e8> f20823c = s33.m7225a();

    /* renamed from: d */
    public ft3 f20824d;

    /* renamed from: e */
    public ft3 f20825e;

    /* renamed from: f */
    public ft3 f20826f;

    public b31(C5606b8 c5606b8) {
        this.f20821a = c5606b8;
    }

    /* renamed from: b */
    public final ft3 m12882b() {
        return this.f20824d;
    }

    /* renamed from: c */
    public final ft3 m12881c() {
        return this.f20825e;
    }

    /* renamed from: d */
    public final ft3 m12880d() {
        return this.f20826f;
    }

    /* renamed from: f */
    public final AbstractC5717e8 m12878f(ft3 ft3Var) {
        return this.f20823c.get(ft3Var);
    }

    /* renamed from: g */
    public final void m12877g(InterfaceC5568a7 interfaceC5568a7) {
        this.f20824d = m12872l(interfaceC5568a7, this.f20822b, this.f20825e, this.f20821a);
    }

    /* renamed from: m */
    public static boolean m12871m(ft3 ft3Var, Object obj, boolean z, int i, int i2, int i3) {
        if (!ft3Var.f23237a.equals(obj)) {
            return false;
        }
        if (z) {
            if (ft3Var.f23238b != i || ft3Var.f23239c != i2) {
                return false;
            }
        } else if (ft3Var.f23238b != -1 || ft3Var.f23241e != i3) {
            return false;
        }
        return true;
    }

    /* renamed from: e */
    public final ft3 m12879e() {
        ft3 next;
        ft3 ft3Var;
        if (this.f20822b.isEmpty()) {
            return null;
        }
        o33<ft3> o33Var = this.f20822b;
        if (o33Var instanceof List) {
            if (!o33Var.isEmpty()) {
                ft3Var = o33Var.get(o33Var.size() - 1);
            } else {
                throw new NoSuchElementException();
            }
        } else {
            Iterator<ft3> it = o33Var.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            ft3Var = next;
        }
        return ft3Var;
    }

    /* renamed from: h */
    public final void m12876h(InterfaceC5568a7 interfaceC5568a7) {
        this.f20824d = m12872l(interfaceC5568a7, this.f20822b, this.f20825e, this.f20821a);
        m12874j(interfaceC5568a7.mo8007G());
    }

    /* renamed from: j */
    public final void m12874j(AbstractC5717e8 abstractC5717e8) {
        r33<ft3, AbstractC5717e8> r33Var = new r33<>();
        if (this.f20822b.isEmpty()) {
            m12873k(r33Var, this.f20825e, abstractC5717e8);
            if (!v03.m6257a(this.f20826f, this.f20825e)) {
                m12873k(r33Var, this.f20826f, abstractC5717e8);
            }
            if (!v03.m6257a(this.f20824d, this.f20825e) && !v03.m6257a(this.f20824d, this.f20826f)) {
                m12873k(r33Var, this.f20824d, abstractC5717e8);
            }
        } else {
            for (int i = 0; i < this.f20822b.size(); i++) {
                m12873k(r33Var, this.f20822b.get(i), abstractC5717e8);
            }
            if (!this.f20822b.contains(this.f20824d)) {
                m12873k(r33Var, this.f20824d, abstractC5717e8);
            }
        }
        this.f20823c = r33Var.m7615c();
    }

    /* renamed from: k */
    public final void m12873k(r33<ft3, AbstractC5717e8> r33Var, ft3 ft3Var, AbstractC5717e8 abstractC5717e8) {
        if (ft3Var == null) {
            return;
        }
        if (abstractC5717e8.mo4072i(ft3Var.f23237a) != -1) {
            r33Var.m7617a(ft3Var, abstractC5717e8);
            return;
        }
        AbstractC5717e8 abstractC5717e82 = this.f20823c.get(ft3Var);
        if (abstractC5717e82 != null) {
            r33Var.m7617a(ft3Var, abstractC5717e82);
        }
    }

    /* renamed from: l */
    public static ft3 m12872l(InterfaceC5568a7 interfaceC5568a7, o33<ft3> o33Var, ft3 ft3Var, C5606b8 c5606b8) {
        Object mo4071j;
        int i;
        AbstractC5717e8 mo8007G = interfaceC5568a7.mo8007G();
        int mo7963t = interfaceC5568a7.mo7963t();
        if (mo8007G.m11843k()) {
            mo4071j = null;
        } else {
            mo4071j = mo8007G.mo4071j(mo7963t);
        }
        if (!interfaceC5568a7.mo7957z() && !mo8007G.m11843k()) {
            i = mo8007G.mo4073h(mo7963t, c5606b8, false).m12852f(C5711e3.m11871b(interfaceC5568a7.mo7999O()));
        } else {
            i = -1;
        }
        for (int i2 = 0; i2 < o33Var.size(); i2++) {
            ft3 ft3Var2 = o33Var.get(i2);
            if (m12871m(ft3Var2, mo4071j, interfaceC5568a7.mo7957z(), interfaceC5568a7.mo7998P(), interfaceC5568a7.mo7958y(), i)) {
                return ft3Var2;
            }
        }
        if (o33Var.isEmpty() && ft3Var != null) {
            if (m12871m(ft3Var, mo4071j, interfaceC5568a7.mo7957z(), interfaceC5568a7.mo7998P(), interfaceC5568a7.mo7958y(), i)) {
                return ft3Var;
            }
        }
        return null;
    }

    /* renamed from: i */
    public final void m12875i(List<ft3> list, ft3 ft3Var, InterfaceC5568a7 interfaceC5568a7) {
        this.f20822b = o33.m8893x(list);
        if (!list.isEmpty()) {
            this.f20825e = list.get(0);
            ft3Var.getClass();
            this.f20826f = ft3Var;
        }
        if (this.f20824d == null) {
            this.f20824d = m12872l(interfaceC5568a7, this.f20822b, this.f20825e, this.f20821a);
        }
        m12874j(interfaceC5568a7.mo8007G());
    }
}
