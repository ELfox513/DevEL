package p168r4;

import android.os.Handler;
import android.os.SystemClock;
/* renamed from: r4.yy3 */
/* loaded from: classes2.dex */
public final class yy3 {

    /* renamed from: a */
    public final Handler f34253a;

    /* renamed from: b */
    public final zy3 f34254b;

    public yy3(Handler handler, zy3 zy3Var) {
        this.f34253a = zy3Var == null ? null : handler;
        this.f34254b = zy3Var;
    }

    /* renamed from: a */
    public final void m4526a(final C5808gp c5808gp) {
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, c5808gp) { // from class: r4.oy3

                /* renamed from: a */
                public final yy3 f29271a;

                /* renamed from: b */
                public final C5808gp f29272b;

                {
                    this.f29271a = this;
                    this.f29272b = c5808gp;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29271a.m4507t(this.f29272b);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m4525b(final String str, final long j, final long j2) {
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, str, j, j2) { // from class: r4.py3

                /* renamed from: a */
                public final yy3 f29848a;

                /* renamed from: b */
                public final String f29849b;

                /* renamed from: d */
                public final long f29850d;

                /* renamed from: k */
                public final long f29851k;

                {
                    this.f29848a = this;
                    this.f29849b = str;
                    this.f29850d = j;
                    this.f29851k = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29848a.m4508s(this.f29849b, this.f29850d, this.f29851k);
                }
            });
        }
    }

    /* renamed from: c */
    public final void m4524c(final C5713e5 c5713e5, final C5883iq c5883iq) {
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, c5713e5, c5883iq) { // from class: r4.qy3

                /* renamed from: a */
                public final yy3 f30364a;

                /* renamed from: b */
                public final C5713e5 f30365b;

                /* renamed from: d */
                public final C5883iq f30366d;

                {
                    this.f30364a = this;
                    this.f30365b = c5713e5;
                    this.f30366d = c5883iq;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f30364a.m4509r(this.f30365b, this.f30366d);
                }
            });
        }
    }

    /* renamed from: d */
    public final void m4523d(final int i, final long j) {
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, i, j) { // from class: r4.ry3

                /* renamed from: a */
                public final yy3 f30755a;

                /* renamed from: b */
                public final int f30756b;

                /* renamed from: d */
                public final long f30757d;

                {
                    this.f30755a = this;
                    this.f30756b = i;
                    this.f30757d = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f30755a.m4510q(this.f30756b, this.f30757d);
                }
            });
        }
    }

    /* renamed from: e */
    public final void m4522e(final long j, final int i) {
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, j, i) { // from class: r4.sy3

                /* renamed from: a */
                public final yy3 f31589a;

                /* renamed from: b */
                public final long f31590b;

                /* renamed from: d */
                public final int f31591d;

                {
                    this.f31589a = this;
                    this.f31590b = j;
                    this.f31591d = i;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f31589a.m4511p(this.f31590b, this.f31591d);
                }
            });
        }
    }

    /* renamed from: f */
    public final void m4521f(final pa4 pa4Var) {
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, pa4Var) { // from class: r4.ty3

                /* renamed from: a */
                public final yy3 f32084a;

                /* renamed from: b */
                public final pa4 f32085b;

                {
                    this.f32084a = this;
                    this.f32085b = pa4Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32084a.m4512o(this.f32085b);
                }
            });
        }
    }

    /* renamed from: h */
    public final void m4519h(final String str) {
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, str) { // from class: r4.vy3

                /* renamed from: a */
                public final yy3 f32982a;

                /* renamed from: b */
                public final String f32983b;

                {
                    this.f32982a = this;
                    this.f32983b = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32982a.m4514m(this.f32983b);
                }
            });
        }
    }

    /* renamed from: j */
    public final void m4517j(final Exception exc) {
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, exc) { // from class: r4.xy3

                /* renamed from: a */
                public final yy3 f33816a;

                /* renamed from: b */
                public final Exception f33817b;

                {
                    this.f33816a = this;
                    this.f33817b = exc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f33816a.m4516k(this.f33817b);
                }
            });
        }
    }

    /* renamed from: k */
    public final /* synthetic */ void m4516k(Exception exc) {
        zy3 zy3Var = this.f34254b;
        int i = C5979lc.f27164a;
        zy3Var.mo4025f(exc);
    }

    /* renamed from: m */
    public final /* synthetic */ void m4514m(String str) {
        zy3 zy3Var = this.f34254b;
        int i = C5979lc.f27164a;
        zy3Var.mo4020x0(str);
    }

    /* renamed from: n */
    public final /* synthetic */ void m4513n(Object obj, long j) {
        zy3 zy3Var = this.f34254b;
        int i = C5979lc.f27164a;
        zy3Var.mo4024l(obj, j);
    }

    /* renamed from: o */
    public final /* synthetic */ void m4512o(pa4 pa4Var) {
        zy3 zy3Var = this.f34254b;
        int i = C5979lc.f27164a;
        zy3Var.mo4021q(pa4Var);
    }

    /* renamed from: q */
    public final /* synthetic */ void m4510q(int i, long j) {
        zy3 zy3Var = this.f34254b;
        int i2 = C5979lc.f27164a;
        zy3Var.mo4019z(i, j);
    }

    /* renamed from: t */
    public final /* synthetic */ void m4507t(C5808gp c5808gp) {
        zy3 zy3Var = this.f34254b;
        int i = C5979lc.f27164a;
        zy3Var.mo4023m(c5808gp);
    }

    /* renamed from: g */
    public final void m4520g(final Object obj) {
        if (this.f34253a != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f34253a.post(new Runnable(this, obj, elapsedRealtime) { // from class: r4.uy3

                /* renamed from: a */
                public final yy3 f32496a;

                /* renamed from: b */
                public final Object f32497b;

                /* renamed from: d */
                public final long f32498d;

                {
                    this.f32496a = this;
                    this.f32497b = obj;
                    this.f32498d = elapsedRealtime;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32496a.m4513n(this.f32497b, this.f32498d);
                }
            });
        }
    }

    /* renamed from: p */
    public final /* synthetic */ void m4511p(long j, int i) {
        zy3 zy3Var = this.f34254b;
        int i2 = C5979lc.f27164a;
        zy3Var.mo4027b(j, i);
    }

    /* renamed from: r */
    public final /* synthetic */ void m4509r(C5713e5 c5713e5, C5883iq c5883iq) {
        int i = C5979lc.f27164a;
        this.f34254b.mo4026c(c5713e5, c5883iq);
    }

    /* renamed from: s */
    public final /* synthetic */ void m4508s(String str, long j, long j2) {
        zy3 zy3Var = this.f34254b;
        int i = C5979lc.f27164a;
        zy3Var.mo4022n(str, j, j2);
    }

    /* renamed from: i */
    public final void m4518i(final C5808gp c5808gp) {
        c5808gp.m11092a();
        Handler handler = this.f34253a;
        if (handler != null) {
            handler.post(new Runnable(this, c5808gp) { // from class: r4.wy3

                /* renamed from: a */
                public final yy3 f33366a;

                /* renamed from: b */
                public final C5808gp f33367b;

                {
                    this.f33366a = this;
                    this.f33367b = c5808gp;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f33366a.m4515l(this.f33367b);
                }
            });
        }
    }

    /* renamed from: l */
    public final /* synthetic */ void m4515l(C5808gp c5808gp) {
        c5808gp.m11092a();
        zy3 zy3Var = this.f34254b;
        int i = C5979lc.f27164a;
        zy3Var.mo4028C(c5808gp);
    }
}
