package p168r4;

import android.location.Location;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p041d3.InterfaceC3314s;
import p068g3.C3582d;
import p184t2.C6728w;
import p202v2.C6978e;
/* renamed from: r4.ic0 */
/* loaded from: classes2.dex */
public final class ic0 implements InterfaceC3314s {

    /* renamed from: a */
    public final Date f25028a;

    /* renamed from: b */
    public final int f25029b;

    /* renamed from: c */
    public final Set<String> f25030c;

    /* renamed from: d */
    public final boolean f25031d;

    /* renamed from: e */
    public final Location f25032e;

    /* renamed from: f */
    public final int f25033f;

    /* renamed from: g */
    public final d20 f25034g;

    /* renamed from: i */
    public final boolean f25036i;

    /* renamed from: k */
    public final String f25038k;

    /* renamed from: h */
    public final List<String> f25035h = new ArrayList();

    /* renamed from: j */
    public final Map<String, Boolean> f25037j = new HashMap();

    @Override // p041d3.InterfaceC3314s
    /* renamed from: a */
    public final Map<String, Boolean> mo10692a() {
        return this.f25037j;
    }

    @Override // p041d3.InterfaceC3314s
    /* renamed from: b */
    public final C3582d mo10691b() {
        return d20.m12235X0(this.f25034g);
    }

    @Override // p041d3.InterfaceC3300e
    /* renamed from: c */
    public final int mo5779c() {
        return this.f25033f;
    }

    @Override // p041d3.InterfaceC3314s
    /* renamed from: d */
    public final boolean mo10690d() {
        return this.f25035h.contains("6");
    }

    @Override // p041d3.InterfaceC3300e
    @Deprecated
    /* renamed from: e */
    public final boolean mo5778e() {
        return this.f25036i;
    }

    @Override // p041d3.InterfaceC3300e
    @Deprecated
    /* renamed from: f */
    public final Date mo5777f() {
        return this.f25028a;
    }

    @Override // p041d3.InterfaceC3300e
    /* renamed from: g */
    public final boolean mo5776g() {
        return this.f25031d;
    }

    @Override // p041d3.InterfaceC3300e
    /* renamed from: h */
    public final Set<String> mo5775h() {
        return this.f25030c;
    }

    @Override // p041d3.InterfaceC3300e
    /* renamed from: j */
    public final Location mo5774j() {
        return this.f25032e;
    }

    @Override // p041d3.InterfaceC3300e
    @Deprecated
    /* renamed from: k */
    public final int mo5773k() {
        return this.f25029b;
    }

    @Override // p041d3.InterfaceC3314s
    public final boolean zza() {
        return this.f25035h.contains("3");
    }

    @Override // p041d3.InterfaceC3314s
    /* renamed from: i */
    public final C6978e mo10689i() {
        d20 d20Var = this.f25034g;
        C6978e.C6979a c6979a = new C6978e.C6979a();
        if (d20Var == null) {
            return c6979a.m2803a();
        }
        int i = d20Var.f22042a;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    c6979a.m2799e(d20Var.f22048r);
                    c6979a.m2800d(d20Var.f22049s);
                }
                c6979a.m2797g(d20Var.f22043b);
                c6979a.m2801c(d20Var.f22044d);
                c6979a.m2798f(d20Var.f22045k);
                return c6979a.m2803a();
            }
            C6446xy c6446xy = d20Var.f22047q;
            if (c6446xy != null) {
                c6979a.m2796h(new C6728w(c6446xy));
            }
        }
        c6979a.m2802b(d20Var.f22046p);
        c6979a.m2797g(d20Var.f22043b);
        c6979a.m2801c(d20Var.f22044d);
        c6979a.m2798f(d20Var.f22045k);
        return c6979a.m2803a();
    }

    public ic0(Date date, int i, Set<String> set, Location location, boolean z, int i2, d20 d20Var, List<String> list, boolean z2, int i3, String str) {
        this.f25028a = date;
        this.f25029b = i;
        this.f25030c = set;
        this.f25032e = location;
        this.f25031d = z;
        this.f25033f = i2;
        this.f25034g = d20Var;
        this.f25036i = z2;
        this.f25038k = str;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.f25037j.put(split[1], Boolean.TRUE);
                        } else if ("false".equals(split[2])) {
                            this.f25037j.put(split[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.f25035h.add(str2);
                }
            }
        }
    }
}
