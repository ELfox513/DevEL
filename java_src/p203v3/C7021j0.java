package p203v3;

import com.google.android.gms.common.api.Status;
import p026c4.C1041b;
import p097j5.AbstractC4346i;
import p097j5.InterfaceC4336d;
import p185t3.C6734b;
import p194u3.C6894b;
import p220x3.AbstractC7246c;
import p220x3.C7258e;
import p220x3.C7286n;
import p220x3.C7300r;
import p220x3.C7303s;
/* renamed from: v3.j0 */
/* loaded from: classes.dex */
public final class C7021j0<T> implements InterfaceC4336d<T> {

    /* renamed from: a */
    public final C7008f f35989a;

    /* renamed from: b */
    public final int f35990b;

    /* renamed from: c */
    public final C6995b<?> f35991c;

    /* renamed from: d */
    public final long f35992d;

    public C7021j0(C7008f c7008f, int i, C6995b<?> c6995b, long j, String str, String str2) {
        this.f35989a = c7008f;
        this.f35990b = i;
        this.f35991c = c6995b;
        this.f35992d = j;
    }

    @Override // p097j5.InterfaceC4336d
    /* renamed from: a */
    public final void mo2639a(AbstractC4346i<T> abstractC4346i) {
        C7000c0 m2689s;
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int m3528X0;
        int i5;
        long j;
        long j2;
        if (!this.f35989a.m2685w()) {
            return;
        }
        C7303s m1878a = C7300r.m1877b().m1878a();
        if ((m1878a == null || m1878a.m1866Z0()) && (m2689s = this.f35989a.m2689s(this.f35991c)) != null && (m2689s.m2731s() instanceof AbstractC7246c)) {
            AbstractC7246c abstractC7246c = (AbstractC7246c) m2689s.m2731s();
            boolean z2 = true;
            if (this.f35992d > 0) {
                z = true;
            } else {
                z = false;
            }
            int m1980x = abstractC7246c.m1980x();
            if (m1878a != null) {
                z &= m1878a.m1865a1();
                int m1868X0 = m1878a.m1868X0();
                int m1867Y0 = m1878a.m1867Y0();
                i = m1878a.m1864b1();
                if (abstractC7246c.m2022H() && !abstractC7246c.m2000c()) {
                    C7258e m2642c = m2642c(m2689s, abstractC7246c, this.f35990b);
                    if (m2642c == null) {
                        return;
                    }
                    z2 = (!m2642c.m1954b1() || this.f35992d <= 0) ? false : false;
                    m1867Y0 = m2642c.m1958X0();
                    z = z2;
                }
                i2 = m1868X0;
                i3 = m1867Y0;
            } else {
                i = 0;
                i2 = 5000;
                i3 = 100;
            }
            C7008f c7008f = this.f35989a;
            if (abstractC4346i.mo16786p()) {
                i4 = 0;
                i5 = 0;
            } else {
                if (abstractC4346i.mo16788n()) {
                    i4 = 100;
                } else {
                    Exception mo16791k = abstractC4346i.mo16791k();
                    if (mo16791k instanceof C6894b) {
                        Status m3064a = ((C6894b) mo16791k).m3064a();
                        int m23036Z0 = m3064a.m23036Z0();
                        C6734b m23038X0 = m3064a.m23038X0();
                        if (m23038X0 == null) {
                            m3528X0 = -1;
                        } else {
                            m3528X0 = m23038X0.m3528X0();
                        }
                        i5 = m3528X0;
                        i4 = m23036Z0;
                    } else {
                        i4 = 101;
                    }
                }
                i5 = -1;
            }
            if (z) {
                long j3 = this.f35992d;
                j2 = System.currentTimeMillis();
                j = j3;
            } else {
                j = 0;
                j2 = 0;
            }
            c7008f.m2682z(new C7286n(this.f35990b, i4, i5, j, j2, null, null, m1980x), i, i2, i3);
        }
    }

    /* renamed from: b */
    public static <T> C7021j0<T> m2643b(C7008f c7008f, int i, C6995b<?> c6995b) {
        boolean z;
        long j;
        if (!c7008f.m2685w()) {
            return null;
        }
        C7303s m1878a = C7300r.m1877b().m1878a();
        if (m1878a != null) {
            if (!m1878a.m1866Z0()) {
                return null;
            }
            z = m1878a.m1865a1();
            C7000c0 m2689s = c7008f.m2689s(c6995b);
            if (m2689s != null) {
                if (!(m2689s.m2731s() instanceof AbstractC7246c)) {
                    return null;
                }
                AbstractC7246c abstractC7246c = (AbstractC7246c) m2689s.m2731s();
                if (abstractC7246c.m2022H() && !abstractC7246c.m2000c()) {
                    C7258e m2642c = m2642c(m2689s, abstractC7246c, i);
                    if (m2642c == null) {
                        return null;
                    }
                    m2689s.m2757F();
                    z = m2642c.m1954b1();
                }
            }
        } else {
            z = true;
        }
        if (z) {
            j = System.currentTimeMillis();
        } else {
            j = 0;
        }
        return new C7021j0<>(c7008f, i, c6995b, j, null, null);
    }

    /* renamed from: c */
    public static C7258e m2642c(C7000c0<?> c7000c0, AbstractC7246c<?> abstractC7246c, int i) {
        int[] m1957Y0;
        int[] m1956Z0;
        C7258e m2023F = abstractC7246c.m2023F();
        if (m2023F == null || !m2023F.m1955a1() || ((m1957Y0 = m2023F.m1957Y0()) != null ? !C1041b.m24778b(m1957Y0, i) : !((m1956Z0 = m2023F.m1956Z0()) == null || !C1041b.m24778b(m1956Z0, i))) || c7000c0.m2758E() >= m2023F.m1958X0()) {
            return null;
        }
        return m2023F;
    }
}
