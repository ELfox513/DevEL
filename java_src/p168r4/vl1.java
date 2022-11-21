package p168r4;

import android.os.Handler;
/* renamed from: r4.vl1 */
/* loaded from: classes2.dex */
public final class vl1 {

    /* renamed from: a */
    public final Handler f32756a;

    /* renamed from: b */
    public final wm1 f32757b;

    public vl1(Handler handler, wm1 wm1Var) {
        this.f32756a = wm1Var == null ? null : handler;
        this.f32757b = wm1Var;
    }

    /* renamed from: a */
    public final void m6108a(final C5808gp c5808gp) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, c5808gp) { // from class: r4.kb1

                /* renamed from: a */
                public final vl1 f26361a;

                /* renamed from: b */
                public final C5808gp f26362b;

                {
                    this.f26361a = this;
                    this.f26362b = c5808gp;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26361a.m6089t(this.f26362b);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m6107b(final String str, final long j, final long j2) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, str, j, j2) { // from class: r4.lc1

                /* renamed from: a */
                public final vl1 f27181a;

                /* renamed from: b */
                public final String f27182b;

                /* renamed from: d */
                public final long f27183d;

                /* renamed from: k */
                public final long f27184k;

                {
                    this.f27181a = this;
                    this.f27182b = str;
                    this.f27183d = j;
                    this.f27184k = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f27181a.m6090s(this.f27182b, this.f27183d, this.f27184k);
                }
            });
        }
    }

    /* renamed from: c */
    public final void m6106c(final C5713e5 c5713e5, final C5883iq c5883iq) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, c5713e5, c5883iq) { // from class: r4.md1

                /* renamed from: a */
                public final vl1 f27584a;

                /* renamed from: b */
                public final C5713e5 f27585b;

                /* renamed from: d */
                public final C5883iq f27586d;

                {
                    this.f27584a = this;
                    this.f27585b = c5713e5;
                    this.f27586d = c5883iq;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f27584a.m6091r(this.f27585b, this.f27586d);
                }
            });
        }
    }

    /* renamed from: d */
    public final void m6105d(final long j) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, j) { // from class: r4.ne1

                /* renamed from: a */
                public final vl1 f28257a;

                /* renamed from: b */
                public final long f28258b;

                {
                    this.f28257a = this;
                    this.f28258b = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f28257a.m6092q(this.f28258b);
                }
            });
        }
    }

    /* renamed from: e */
    public final void m6104e(final int i, final long j, final long j2) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, i, j, j2) { // from class: r4.of1

                /* renamed from: a */
                public final vl1 f28973a;

                /* renamed from: b */
                public final int f28974b;

                /* renamed from: d */
                public final long f28975d;

                /* renamed from: k */
                public final long f28976k;

                {
                    this.f28973a = this;
                    this.f28974b = i;
                    this.f28975d = j;
                    this.f28976k = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f28973a.m6093p(this.f28974b, this.f28975d, this.f28976k);
                }
            });
        }
    }

    /* renamed from: f */
    public final void m6103f(final String str) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, str) { // from class: r4.pg1

                /* renamed from: a */
                public final vl1 f29459a;

                /* renamed from: b */
                public final String f29460b;

                {
                    this.f29459a = this;
                    this.f29460b = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29459a.m6094o(this.f29460b);
                }
            });
        }
    }

    /* renamed from: h */
    public final void m6101h(final boolean z) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, z) { // from class: r4.ri1

                /* renamed from: a */
                public final vl1 f30578a;

                /* renamed from: b */
                public final boolean f30579b;

                {
                    this.f30578a = this;
                    this.f30579b = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f30578a.m6096m(this.f30579b);
                }
            });
        }
    }

    /* renamed from: i */
    public final void m6100i(final Exception exc) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, exc) { // from class: r4.sj1

                /* renamed from: a */
                public final vl1 f31380a;

                /* renamed from: b */
                public final Exception f31381b;

                {
                    this.f31380a = this;
                    this.f31381b = exc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f31380a.m6097l(this.f31381b);
                }
            });
        }
    }

    /* renamed from: j */
    public final void m6099j(final Exception exc) {
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, exc) { // from class: r4.tk1

                /* renamed from: a */
                public final vl1 f31882a;

                /* renamed from: b */
                public final Exception f31883b;

                {
                    this.f31882a = this;
                    this.f31883b = exc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f31882a.m6098k(this.f31883b);
                }
            });
        }
    }

    /* renamed from: k */
    public final /* synthetic */ void m6098k(Exception exc) {
        wm1 wm1Var = this.f32757b;
        int i = C5979lc.f27164a;
        wm1Var.mo5640v(exc);
    }

    /* renamed from: l */
    public final /* synthetic */ void m6097l(Exception exc) {
        wm1 wm1Var = this.f32757b;
        int i = C5979lc.f27164a;
        wm1Var.mo5638x(exc);
    }

    /* renamed from: m */
    public final /* synthetic */ void m6096m(boolean z) {
        wm1 wm1Var = this.f32757b;
        int i = C5979lc.f27164a;
        wm1Var.mo5641p(z);
    }

    /* renamed from: o */
    public final /* synthetic */ void m6094o(String str) {
        wm1 wm1Var = this.f32757b;
        int i = C5979lc.f27164a;
        wm1Var.mo5646d(str);
    }

    /* renamed from: q */
    public final /* synthetic */ void m6092q(long j) {
        wm1 wm1Var = this.f32757b;
        int i = C5979lc.f27164a;
        wm1Var.mo5639w(j);
    }

    /* renamed from: t */
    public final /* synthetic */ void m6089t(C5808gp c5808gp) {
        wm1 wm1Var = this.f32757b;
        int i = C5979lc.f27164a;
        wm1Var.mo5645e(c5808gp);
    }

    /* renamed from: p */
    public final /* synthetic */ void m6093p(int i, long j, long j2) {
        wm1 wm1Var = this.f32757b;
        int i2 = C5979lc.f27164a;
        wm1Var.mo5644i(i, j, j2);
    }

    /* renamed from: r */
    public final /* synthetic */ void m6091r(C5713e5 c5713e5, C5883iq c5883iq) {
        int i = C5979lc.f27164a;
        this.f32757b.mo5643j(c5713e5, c5883iq);
    }

    /* renamed from: s */
    public final /* synthetic */ void m6090s(String str, long j, long j2) {
        wm1 wm1Var = this.f32757b;
        int i = C5979lc.f27164a;
        wm1Var.mo5642o(str, j, j2);
    }

    /* renamed from: g */
    public final void m6102g(final C5808gp c5808gp) {
        c5808gp.m11092a();
        Handler handler = this.f32756a;
        if (handler != null) {
            handler.post(new Runnable(this, c5808gp) { // from class: r4.qh1

                /* renamed from: a */
                public final vl1 f30113a;

                /* renamed from: b */
                public final C5808gp f30114b;

                {
                    this.f30113a = this;
                    this.f30114b = c5808gp;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f30113a.m6095n(this.f30114b);
                }
            });
        }
    }

    /* renamed from: n */
    public final /* synthetic */ void m6095n(C5808gp c5808gp) {
        c5808gp.m11092a();
        wm1 wm1Var = this.f32757b;
        int i = C5979lc.f27164a;
        wm1Var.mo5647A(c5808gp);
    }
}
