package p168r4;

import android.content.Context;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.cz0 */
/* loaded from: classes2.dex */
public final class cz0 implements j71, y81, d81, InterfaceC5812gt, z71 {

    /* renamed from: a */
    public final Context f21977a;

    /* renamed from: b */
    public final Executor f21978b;

    /* renamed from: d */
    public final Executor f21979d;

    /* renamed from: k */
    public final ScheduledExecutorService f21980k;

    /* renamed from: p */
    public final bp2 f21981p;

    /* renamed from: q */
    public final no2 f21982q;

    /* renamed from: r */
    public final mu2 f21983r;

    /* renamed from: s */
    public final sp2 f21984s;

    /* renamed from: t */
    public final C6300u f21985t;

    /* renamed from: u */
    public final r00 f21986u;

    /* renamed from: v */
    public final WeakReference<View> f21987v;

    /* renamed from: w */
    public boolean f21988w;

    /* renamed from: x */
    public final AtomicBoolean f21989x = new AtomicBoolean();

    /* renamed from: y */
    public final t00 f21990y;

    /* renamed from: A */
    public final /* synthetic */ void m12264A() {
        this.f21978b.execute(new Runnable(this) { // from class: r4.zy0

            /* renamed from: a */
            public final cz0 f34781a;

            {
                this.f34781a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34781a.m12263B();
            }
        });
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final synchronized void mo4268d() {
        if (this.f21988w) {
            ArrayList arrayList = new ArrayList(this.f21982q.f28410d);
            arrayList.addAll(this.f21982q.f28416g);
            this.f21984s.m7070a(this.f21983r.m9270b(this.f21981p, this.f21982q, true, null, null, arrayList));
        } else {
            sp2 sp2Var = this.f21984s;
            mu2 mu2Var = this.f21983r;
            bp2 bp2Var = this.f21981p;
            no2 no2Var = this.f21982q;
            sp2Var.m7070a(mu2Var.m9271a(bp2Var, no2Var, no2Var.f28427n));
            sp2 sp2Var2 = this.f21984s;
            mu2 mu2Var2 = this.f21983r;
            bp2 bp2Var2 = this.f21981p;
            no2 no2Var2 = this.f21982q;
            sp2Var2.m7070a(mu2Var2.m9271a(bp2Var2, no2Var2, no2Var2.f28416g));
        }
        this.f21988w = true;
    }

    @Override // p168r4.j71
    /* renamed from: f */
    public final void mo5386f() {
    }

    @Override // p168r4.j71
    /* renamed from: h */
    public final void mo5384h() {
    }

    @Override // p168r4.j71
    /* renamed from: j */
    public final void mo5383j() {
    }

    /* renamed from: v */
    public final /* synthetic */ void m12255v(final int i, final int i2) {
        this.f21978b.execute(new Runnable(this, i, i2) { // from class: r4.yy0

            /* renamed from: a */
            public final cz0 f34250a;

            /* renamed from: b */
            public final int f34251b;

            /* renamed from: d */
            public final int f34252d;

            {
                this.f34250a = this;
                this.f34251b = i;
                this.f34252d = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34250a.m12254z(this.f34251b, this.f34252d);
            }
        });
    }

    /* renamed from: z */
    public final /* synthetic */ void m12254z(int i, int i2) {
        m12262L(i - 1, i2);
    }

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        if ((!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31034i0)).booleanValue() || !this.f21981p.f21154b.f20574b.f31431g) && e10.f22725d.m6673e().booleanValue()) {
            y73.m4799p(y73.m4809f(o73.m8869E(this.f21986u.m7632b()), Throwable.class, uy0.f32494a, qm0.f30195f), new az0(this), this.f21978b);
            return;
        }
        sp2 sp2Var = this.f21984s;
        mu2 mu2Var = this.f21983r;
        bp2 bp2Var = this.f21981p;
        no2 no2Var = this.f21982q;
        List<String> m9271a = mu2Var.m9271a(bp2Var, no2Var, no2Var.f28408c);
        C7601t.m939d();
        int i = 1;
        if (true == C0497k2.m26313i(this.f21977a)) {
            i = 2;
        }
        sp2Var.m7069b(m9271a, i);
    }

    /* renamed from: L */
    public final void m12262L(final int i, final int i2) {
        View view;
        if (i > 0 && ((view = this.f21987v.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            this.f21980k.schedule(new Runnable(this, i, i2) { // from class: r4.xy0

                /* renamed from: a */
                public final cz0 f33805a;

                /* renamed from: b */
                public final int f33806b;

                /* renamed from: d */
                public final int f33807d;

                {
                    this.f33805a = this;
                    this.f33806b = i;
                    this.f33807d = i2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f33805a.m12255v(this.f33806b, this.f33807d);
                }
            }, i2, TimeUnit.MILLISECONDS);
        } else {
            m12263B();
        }
    }

    /* renamed from: N */
    public final void m12263B() {
        String str;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30969a2)).booleanValue()) {
            str = this.f21985t.m6683b().mo1017d(this.f21977a, this.f21987v.get(), null);
        } else {
            str = null;
        }
        if ((((Boolean) C5592av.m12935c().m8098c(C6225rz.f31034i0)).booleanValue() && this.f21981p.f21154b.f20574b.f31431g) || !e10.f22729h.m6673e().booleanValue()) {
            sp2 sp2Var = this.f21984s;
            mu2 mu2Var = this.f21983r;
            bp2 bp2Var = this.f21981p;
            no2 no2Var = this.f21982q;
            sp2Var.m7070a(mu2Var.m9270b(bp2Var, no2Var, false, str, null, no2Var.f28410d));
            return;
        }
        y73.m4799p((o73) y73.m4807h(o73.m8869E(y73.m4814a(null)), ((Long) C5592av.m12935c().m8098c(C6225rz.f30807G0)).longValue(), TimeUnit.MILLISECONDS, this.f21980k), new bz0(this, str), this.f21978b);
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final void mo5385g() {
        if (!this.f21989x.compareAndSet(false, true)) {
            return;
        }
        int intValue = ((Integer) C5592av.m12935c().m8098c(C6225rz.f30996d2)).intValue();
        if (intValue > 0) {
            m12262L(intValue, ((Integer) C5592av.m12935c().m8098c(C6225rz.f31004e2)).intValue());
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30987c2)).booleanValue()) {
            this.f21979d.execute(new Runnable(this) { // from class: r4.vy0

                /* renamed from: a */
                public final cz0 f32977a;

                {
                    this.f32977a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32977a.m12264A();
                }
            });
        } else {
            m12263B();
        }
    }

    @Override // p168r4.j71
    /* renamed from: k */
    public final void mo5382k() {
        sp2 sp2Var = this.f21984s;
        mu2 mu2Var = this.f21983r;
        bp2 bp2Var = this.f21981p;
        no2 no2Var = this.f21982q;
        sp2Var.m7070a(mu2Var.m9271a(bp2Var, no2Var, no2Var.f28418h));
    }

    @Override // p168r4.j71
    /* renamed from: l */
    public final void mo5381l() {
        sp2 sp2Var = this.f21984s;
        mu2 mu2Var = this.f21983r;
        bp2 bp2Var = this.f21981p;
        no2 no2Var = this.f21982q;
        sp2Var.m7070a(mu2Var.m9271a(bp2Var, no2Var, no2Var.f28422j));
    }

    @Override // p168r4.z71
    /* renamed from: o */
    public final void mo4410o(C5996lt c5996lt) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30959Z0)).booleanValue()) {
            this.f21984s.m7070a(this.f21983r.m9271a(this.f21981p, this.f21982q, mu2.m9268d(2, c5996lt.f27361a, this.f21982q.f28428o)));
        }
    }

    @Override // p168r4.j71
    /* renamed from: q */
    public final void mo5378q(eh0 eh0Var, String str, String str2) {
        sp2 sp2Var = this.f21984s;
        mu2 mu2Var = this.f21983r;
        no2 no2Var = this.f21982q;
        sp2Var.m7070a(mu2Var.m9269c(no2Var, no2Var.f28420i, eh0Var));
    }

    public cz0(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, bp2 bp2Var, no2 no2Var, mu2 mu2Var, sp2 sp2Var, View view, C6300u c6300u, r00 r00Var, t00 t00Var, byte[] bArr) {
        this.f21977a = context;
        this.f21978b = executor;
        this.f21979d = executor2;
        this.f21980k = scheduledExecutorService;
        this.f21981p = bp2Var;
        this.f21982q = no2Var;
        this.f21983r = mu2Var;
        this.f21984s = sp2Var;
        this.f21985t = c6300u;
        this.f21987v = new WeakReference<>(view);
        this.f21986u = r00Var;
        this.f21990y = t00Var;
    }
}
