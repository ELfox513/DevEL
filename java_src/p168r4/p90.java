package p168r4;

import android.content.Context;
import p016b3.C0488i1;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p016b3.InterfaceC0487i0;
import p235z2.C7601t;
/* renamed from: r4.p90 */
/* loaded from: classes2.dex */
public final class p90 {

    /* renamed from: b */
    public final Context f29390b;

    /* renamed from: c */
    public final String f29391c;

    /* renamed from: d */
    public final im0 f29392d;

    /* renamed from: e */
    public final InterfaceC0487i0<j80> f29393e;

    /* renamed from: f */
    public final InterfaceC0487i0<j80> f29394f;

    /* renamed from: g */
    public o90 f29395g;

    /* renamed from: a */
    public final Object f29389a = new Object();

    /* renamed from: h */
    public int f29396h = 1;

    public p90(Context context, im0 im0Var, String str, InterfaceC0487i0<j80> interfaceC0487i0, InterfaceC0487i0<j80> interfaceC0487i02) {
        this.f29391c = str;
        this.f29390b = context.getApplicationContext();
        this.f29392d = im0Var;
        this.f29393e = interfaceC0487i0;
        this.f29394f = interfaceC0487i02;
    }

    /* renamed from: h */
    public final /* synthetic */ void m8439h(j80 j80Var) {
        if (j80Var.mo7584h()) {
            this.f29396h = 1;
        }
    }

    /* renamed from: f */
    public final o90 m8441f(C6300u c6300u) {
        final o90 o90Var = new o90(this.f29394f);
        qm0.f30194e.execute(new Runnable(this, null, o90Var) { // from class: r4.t80

            /* renamed from: a */
            public final p90 f31730a;

            /* renamed from: b */
            public final o90 f31731b;

            {
                this.f31730a = this;
                this.f31731b = o90Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f31730a.m8438i(null, this.f31731b);
            }
        });
        o90Var.m12411b(new e90(this, o90Var), new f90(this, o90Var));
        return o90Var;
    }

    /* renamed from: g */
    public final j90 m8440g(C6300u c6300u) {
        synchronized (this.f29389a) {
            synchronized (this.f29389a) {
                o90 o90Var = this.f29395g;
                if (o90Var != null && this.f29396h == 0) {
                    o90Var.m12411b(new zm0(this) { // from class: r4.u80

                        /* renamed from: a */
                        public final p90 f32222a;

                        {
                            this.f32222a = this;
                        }

                        @Override // p168r4.zm0
                        /* renamed from: a */
                        public final void mo4185a(Object obj) {
                            this.f32222a.m8439h((j80) obj);
                        }
                    }, v80.f32649a);
                }
            }
            o90 o90Var2 = this.f29395g;
            if (o90Var2 != null && o90Var2.m12408e() != -1) {
                int i = this.f29396h;
                if (i == 0) {
                    return this.f29395g.m8865f();
                } else if (i == 1) {
                    this.f29396h = 2;
                    m8441f(null);
                    return this.f29395g.m8865f();
                } else {
                    return this.f29395g.m8865f();
                }
            }
            this.f29396h = 2;
            o90 m8441f = m8441f(null);
            this.f29395g = m8441f;
            return m8441f.m8865f();
        }
    }

    /* renamed from: i */
    public final /* synthetic */ void m8438i(C6300u c6300u, final o90 o90Var) {
        try {
            final r80 r80Var = new r80(this.f29390b, this.f29392d, null, null);
            r80Var.mo7580u(new i80(this, o90Var, r80Var) { // from class: r4.x80

                /* renamed from: a */
                public final p90 f33511a;

                /* renamed from: b */
                public final o90 f33512b;

                /* renamed from: c */
                public final j80 f33513c;

                {
                    this.f33511a = this;
                    this.f33512b = o90Var;
                    this.f33513c = r80Var;
                }

                @Override // p168r4.i80
                public final void zza() {
                    final p90 p90Var = this.f33511a;
                    final o90 o90Var2 = this.f33512b;
                    final j80 j80Var = this.f33513c;
                    C0497k2.f1630i.postDelayed(new Runnable(p90Var, o90Var2, j80Var) { // from class: r4.y80

                        /* renamed from: a */
                        public final p90 f34005a;

                        /* renamed from: b */
                        public final o90 f34006b;

                        /* renamed from: d */
                        public final j80 f34007d;

                        {
                            this.f34005a = p90Var;
                            this.f34006b = o90Var2;
                            this.f34007d = j80Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f34005a.m8437j(this.f34006b, this.f34007d);
                        }
                    }, 10000L);
                }
            });
            r80Var.mo7573A0("/jsLoaded", new a90(this, o90Var, r80Var));
            C0488i1 c0488i1 = new C0488i1();
            b90 b90Var = new b90(this, null, r80Var, c0488i1);
            c0488i1.m26362b(b90Var);
            r80Var.mo7573A0("/requestReload", b90Var);
            if (this.f29391c.endsWith(".js")) {
                r80Var.mo7590A(this.f29391c);
            } else if (this.f29391c.startsWith("<html>")) {
                r80Var.mo7589Q(this.f29391c);
            } else {
                r80Var.mo7581s(this.f29391c);
            }
            C0497k2.f1630i.postDelayed(new d90(this, o90Var, r80Var), 60000L);
        } catch (Throwable th) {
            cm0.m12439d("Error creating webview.", th);
            C7601t.m935h().m9056k(th, "SdkJavascriptFactory.loadJavascriptEngine");
            o90Var.m12409d();
        }
    }

    /* renamed from: j */
    public final /* synthetic */ void m8437j(o90 o90Var, j80 j80Var) {
        synchronized (this.f29389a) {
            if (o90Var.m12408e() != -1 && o90Var.m12408e() != 1) {
                o90Var.m12409d();
                qm0.f30194e.execute(z80.m4405a(j80Var));
                C0543w1.m26251k("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
