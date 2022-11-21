package p168r4;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import p235z2.C7601t;
/* renamed from: r4.dn */
/* loaded from: classes2.dex */
public final class C5694dn {

    /* renamed from: b */
    public int f22341b;

    /* renamed from: a */
    public final Object f22340a = new Object();

    /* renamed from: c */
    public final List<C5657cn> f22342c = new LinkedList();

    /* renamed from: a */
    public final C5657cn m12087a(boolean z) {
        int i;
        synchronized (this.f22340a) {
            C5657cn c5657cn = null;
            if (this.f22342c.size() == 0) {
                cm0.m12442a("Queue empty");
                return null;
            }
            int i2 = 0;
            if (this.f22342c.size() >= 2) {
                int i3 = Integer.MIN_VALUE;
                int i4 = 0;
                for (C5657cn c5657cn2 : this.f22342c) {
                    int m12417m = c5657cn2.m12417m();
                    if (m12417m > i3) {
                        i2 = i4;
                    }
                    if (m12417m > i3) {
                        i = m12417m;
                    } else {
                        i = i3;
                    }
                    if (m12417m > i3) {
                        c5657cn = c5657cn2;
                    }
                    i4++;
                    i3 = i;
                }
                this.f22342c.remove(i2);
                return c5657cn;
            }
            C5657cn c5657cn3 = this.f22342c.get(0);
            if (z) {
                this.f22342c.remove(0);
            } else {
                c5657cn3.m12425e();
            }
            return c5657cn3;
        }
    }

    /* renamed from: b */
    public final boolean m12086b(C5657cn c5657cn) {
        synchronized (this.f22340a) {
            if (this.f22342c.contains(c5657cn)) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: c */
    public final boolean m12085c(C5657cn c5657cn) {
        synchronized (this.f22340a) {
            Iterator<C5657cn> it = this.f22342c.iterator();
            while (it.hasNext()) {
                C5657cn next = it.next();
                if (!C7601t.m935h().m9051p().mo26204e()) {
                    if (c5657cn != next && next.m12428b().equals(c5657cn.m12428b())) {
                        it.remove();
                        return true;
                    }
                } else if (!C7601t.m935h().m9051p().mo26202f() && c5657cn != next && next.m12426d().equals(c5657cn.m12426d())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: d */
    public final void m12084d(C5657cn c5657cn) {
        synchronized (this.f22340a) {
            if (this.f22342c.size() >= 10) {
                int size = this.f22342c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                cm0.m12442a(sb.toString());
                this.f22342c.remove(0);
            }
            int i = this.f22341b;
            this.f22341b = i + 1;
            c5657cn.m12416n(i);
            c5657cn.m12420j();
            this.f22342c.add(c5657cn);
        }
    }
}
