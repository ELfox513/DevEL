package p168r4;

import android.os.RemoteException;
import com.prineside.tdi2.Config;
import java.util.HashMap;
import java.util.Map;
import p026c4.C1046g;
/* renamed from: r4.at0 */
/* loaded from: classes2.dex */
public final class at0 extends AbstractBinderC5963kx {

    /* renamed from: a */
    public final po0 f20594a;

    /* renamed from: d */
    public final boolean f20596d;

    /* renamed from: k */
    public final boolean f20597k;

    /* renamed from: p */
    public int f20598p;

    /* renamed from: q */
    public InterfaceC6112ox f20599q;

    /* renamed from: r */
    public boolean f20600r;

    /* renamed from: t */
    public float f20602t;

    /* renamed from: u */
    public float f20603u;

    /* renamed from: v */
    public float f20604v;

    /* renamed from: w */
    public boolean f20605w;

    /* renamed from: x */
    public boolean f20606x;

    /* renamed from: y */
    public u30 f20607y;

    /* renamed from: b */
    public final Object f20595b = new Object();

    /* renamed from: s */
    public boolean f20601s = true;

    public at0(po0 po0Var, float f, boolean z, boolean z2) {
        this.f20594a = po0Var;
        this.f20602t = f;
        this.f20596d = z;
        this.f20597k = z2;
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: c */
    public final void mo6188c() {
        m12942m7("play", null);
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: d */
    public final void mo6187d() {
        m12942m7("pause", null);
    }

    /* renamed from: k7 */
    public final /* synthetic */ void m12944k7(Map map) {
        this.f20594a.mo5125H0("pubVideoCmd", map);
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: m */
    public final void mo6181m() {
        m12942m7("stop", null);
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: n0 */
    public final void mo6180n0(boolean z) {
        m12942m7(true != z ? "unmute" : "mute", null);
    }

    /* renamed from: n7 */
    public final void m12941n7(final int i, final int i2, final boolean z, final boolean z2) {
        qm0.f30194e.execute(new Runnable(this, i, i2, z, z2) { // from class: r4.zs0

            /* renamed from: a */
            public final at0 f34716a;

            /* renamed from: b */
            public final int f34717b;

            /* renamed from: d */
            public final int f34718d;

            /* renamed from: k */
            public final boolean f34719k;

            /* renamed from: p */
            public final boolean f34720p;

            {
                this.f34716a = this;
                this.f34717b = i;
                this.f34718d = i2;
                this.f34719k = z;
                this.f34720p = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34716a.m12945j7(this.f34717b, this.f34718d, this.f34719k, this.f34720p);
            }
        });
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: U4 */
    public final void mo6189U4(InterfaceC6112ox interfaceC6112ox) {
        synchronized (this.f20595b) {
            this.f20599q = interfaceC6112ox;
        }
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: f */
    public final boolean mo6186f() {
        boolean z;
        synchronized (this.f20595b) {
            z = this.f20601s;
        }
        return z;
    }

    /* renamed from: g7 */
    public final void m12948g7(C6446xy c6446xy) {
        String str;
        String str2;
        String str3;
        boolean z = c6446xy.f33802a;
        boolean z2 = c6446xy.f33803b;
        boolean z3 = c6446xy.f33804d;
        synchronized (this.f20595b) {
            this.f20605w = z2;
            this.f20606x = z3;
        }
        if (true != z) {
            str = "0";
        } else {
            str = Config.SITE_API_VERSION;
        }
        String str4 = str;
        if (true != z2) {
            str2 = "0";
        } else {
            str2 = Config.SITE_API_VERSION;
        }
        String str5 = str2;
        if (true != z3) {
            str3 = "0";
        } else {
            str3 = Config.SITE_API_VERSION;
        }
        m12942m7("initialState", C1046g.m24770d("muteStart", str4, "customControlsRequested", str5, "clickToExpandRequested", str3));
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: h */
    public final float mo6185h() {
        float f;
        synchronized (this.f20595b) {
            f = this.f20602t;
        }
        return f;
    }

    /* renamed from: h7 */
    public final void m12947h7(float f) {
        synchronized (this.f20595b) {
            this.f20603u = f;
        }
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: i */
    public final float mo6184i() {
        float f;
        synchronized (this.f20595b) {
            f = this.f20603u;
        }
        return f;
    }

    /* renamed from: i7 */
    public final void m12946i7(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.f20595b) {
            z2 = true;
            if (f2 == this.f20602t && f3 == this.f20604v) {
                z2 = false;
            }
            this.f20602t = f2;
            this.f20603u = f;
            z3 = this.f20601s;
            this.f20601s = z;
            i2 = this.f20598p;
            this.f20598p = i;
            float f4 = this.f20604v;
            this.f20604v = f3;
            if (Math.abs(f3 - f4) > 1.0E-4f) {
                this.f20594a.mo5124I().invalidate();
            }
        }
        if (z2) {
            try {
                u30 u30Var = this.f20607y;
                if (u30Var != null) {
                    u30Var.m6645c();
                }
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
            }
        }
        m12941n7(i2, i, z3, z);
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: j */
    public final int mo6183j() {
        int i;
        synchronized (this.f20595b) {
            i = this.f20598p;
        }
        return i;
    }

    /* renamed from: j7 */
    public final /* synthetic */ void m12945j7(int i, int i2, boolean z, boolean z2) {
        int i3;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        InterfaceC6112ox interfaceC6112ox;
        InterfaceC6112ox interfaceC6112ox2;
        InterfaceC6112ox interfaceC6112ox3;
        synchronized (this.f20595b) {
            boolean z7 = this.f20600r;
            boolean z8 = false;
            if (!z7 && i2 == 1) {
                i3 = 1;
                z3 = true;
            } else {
                i3 = i2;
                z3 = false;
            }
            if (i != i2 && i3 == 1) {
                i3 = 1;
                z4 = true;
            } else {
                z4 = false;
            }
            if (i != i2 && i3 == 2) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (i != i2 && i3 == 3) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.f20600r = (z7 || z3) ? true : true;
            if (z3) {
                try {
                    InterfaceC6112ox interfaceC6112ox4 = this.f20599q;
                    if (interfaceC6112ox4 != null) {
                        interfaceC6112ox4.mo5552c();
                    }
                } catch (RemoteException e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
            if (z4 && (interfaceC6112ox3 = this.f20599q) != null) {
                interfaceC6112ox3.mo5551d();
            }
            if (z5 && (interfaceC6112ox2 = this.f20599q) != null) {
                interfaceC6112ox2.mo5549g();
            }
            if (z6) {
                InterfaceC6112ox interfaceC6112ox5 = this.f20599q;
                if (interfaceC6112ox5 != null) {
                    interfaceC6112ox5.mo5550f();
                }
                this.f20594a.mo5030z();
            }
            if (z != z2 && (interfaceC6112ox = this.f20599q) != null) {
                interfaceC6112ox.mo5548w4(z2);
            }
        }
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: l */
    public final float mo6182l() {
        float f;
        synchronized (this.f20595b) {
            f = this.f20604v;
        }
        return f;
    }

    /* renamed from: l7 */
    public final void m12943l7(u30 u30Var) {
        synchronized (this.f20595b) {
            this.f20607y = u30Var;
        }
    }

    /* renamed from: m7 */
    public final void m12942m7(String str, Map<String, String> map) {
        final HashMap hashMap;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        hashMap.put("action", str);
        qm0.f30194e.execute(new Runnable(this, hashMap) { // from class: r4.ys0

            /* renamed from: a */
            public final at0 f34191a;

            /* renamed from: b */
            public final Map f34192b;

            {
                this.f34191a = this;
                this.f34192b = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34191a.m12944k7(this.f34192b);
            }
        });
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: p */
    public final boolean mo6178p() {
        boolean z;
        synchronized (this.f20595b) {
            z = false;
            if (this.f20596d && this.f20605w) {
                z = true;
            }
        }
        return z;
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: q */
    public final InterfaceC6112ox mo6177q() {
        InterfaceC6112ox interfaceC6112ox;
        synchronized (this.f20595b) {
            interfaceC6112ox = this.f20599q;
        }
        return interfaceC6112ox;
    }

    /* renamed from: w */
    public final void m12940w() {
        boolean z;
        int i;
        synchronized (this.f20595b) {
            z = this.f20601s;
            i = this.f20598p;
            this.f20598p = 3;
        }
        m12941n7(i, 3, z, z);
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: o */
    public final boolean mo6179o() {
        boolean z;
        boolean mo6178p = mo6178p();
        synchronized (this.f20595b) {
            z = false;
            if (!mo6178p) {
                try {
                    if (this.f20606x && this.f20597k) {
                        z = true;
                    }
                } finally {
                }
            }
        }
        return z;
    }
}
