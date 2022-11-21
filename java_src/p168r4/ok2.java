package p168r4;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
import p004a3.InterfaceC0076q;
import p016b3.C0497k2;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.ok2 */
/* loaded from: classes2.dex */
public final class ok2 extends AbstractBinderC6332uv implements InterfaceC0076q, InterfaceC5622bo {

    /* renamed from: a */
    public final bu0 f29027a;

    /* renamed from: b */
    public final Context f29028b;

    /* renamed from: k */
    public final String f29030k;

    /* renamed from: p */
    public final hk2 f29031p;

    /* renamed from: q */
    public final fk2 f29032q;

    /* renamed from: s */
    public b01 f29034s;

    /* renamed from: t */
    public a11 f29035t;

    /* renamed from: d */
    public AtomicBoolean f29029d = new AtomicBoolean();

    /* renamed from: r */
    public long f29033r = -1;

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: A0 */
    public final void mo996A0(boolean z) {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: A2 */
    public final void mo4171A2() {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B */
    public final synchronized String mo995B() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B2 */
    public final void mo994B2(ff0 ff0Var) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B6 */
    public final void mo993B6(InterfaceC5740ev interfaceC5740ev) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: C1 */
    public final synchronized void mo992C1(n00 n00Var) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: D1 */
    public final void mo991D1(C5739eu c5739eu) {
        this.f29031p.m8295i(c5739eu);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: E5 */
    public final void mo990E5(kf0 kf0Var, String str) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: G1 */
    public final void mo989G1(lh0 lh0Var) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: H6 */
    public final void mo988H6(InterfaceC6517zv interfaceC6517zv) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: I */
    public final synchronized boolean mo987I() {
        return this.f29031p.mo6510a();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: J4 */
    public final synchronized void mo986J4(boolean z) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: L */
    public final InterfaceC5887iv mo985L() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: L1 */
    public final void mo984L1(InterfaceC3512a interfaceC3512a) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: P */
    public final synchronized String mo983P() {
        return this.f29030k;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Q5 */
    public final void mo982Q5(C6293tt c6293tt, InterfaceC5998lv interfaceC5998lv) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S0 */
    public final synchronized void mo981S0(C6478yt c6478yt) {
        C7297q.m1888e("setAdSize must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S1 */
    public final void mo980S1(InterfaceC5887iv interfaceC5887iv) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S5 */
    public final void mo979S5(C6149px c6149px) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: X4 */
    public final void mo978X4(InterfaceC5742ex interfaceC5742ex) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Y1 */
    public final void mo977Y1(InterfaceC5807go interfaceC5807go) {
        this.f29032q.m11496g(interfaceC5807go);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Z1 */
    public final synchronized void mo976Z1(C6446xy c6446xy) {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: c */
    public final synchronized void mo4168c() {
        a11 a11Var = this.f29035t;
        if (a11Var != null) {
            a11Var.m13059j(C7601t.m932k().mo24762b() - this.f29033r, 1);
        }
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e */
    public final void mo4166e() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e3 */
    public final void mo4165e3() {
    }

    /* renamed from: f */
    public final void m8783f() {
        this.f29027a.mo8613h().execute(new Runnable(this) { // from class: r4.jk2

            /* renamed from: a */
            public final ok2 f26064a;

            {
                this.f26064a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f26064a.m8780o0();
            }
        });
    }

    /* renamed from: f7 */
    public final synchronized void m8782f7(int i) {
        if (this.f29029d.compareAndSet(false, true)) {
            this.f29032q.m11499A();
            b01 b01Var = this.f29034s;
            if (b01Var != null) {
                C7601t.m936g().m10858c(b01Var);
            }
            if (this.f29035t != null) {
                long j = -1;
                if (this.f29033r != -1) {
                    j = C7601t.m932k().mo24762b() - this.f29033r;
                }
                this.f29035t.m13059j(j, i);
            }
            mo973h();
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h */
    public final synchronized void mo973h() {
        C7297q.m1888e("destroy must be called on the main UI thread.");
        a11 a11Var = this.f29035t;
        if (a11Var != null) {
            a11Var.mo4220b();
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h4 */
    public final synchronized void mo972h4(C5815gw c5815gw) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: i */
    public final boolean mo970i() {
        return false;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: j */
    public final InterfaceC3512a mo968j() {
        return null;
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: j0 */
    public final synchronized void mo4163j0() {
        if (this.f29035t == null) {
            return;
        }
        this.f29033r = C7601t.m932k().mo24762b();
        int m13060i = this.f29035t.m13060i();
        if (m13060i <= 0) {
            return;
        }
        b01 b01Var = new b01(this.f29027a.mo8611i(), C7601t.m932k());
        this.f29034s = b01Var;
        b01Var.m12895a(m13060i, new Runnable(this) { // from class: r4.lk2

            /* renamed from: a */
            public final ok2 f27241a;

            {
                this.f27241a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f27241a.m8783f();
            }
        });
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: l */
    public final synchronized void mo965l() {
        C7297q.m1888e("pause must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: n */
    public final synchronized void mo962n() {
    }

    /* renamed from: o0 */
    public final /* synthetic */ void m8780o0() {
        m8782f7(5);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: p */
    public final synchronized void mo959p() {
        C7297q.m1888e("resume must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: r */
    public final synchronized void mo956r() {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: s5 */
    public final void mo954s5(InterfaceC5962kw interfaceC5962kw) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: t */
    public final synchronized C6478yt mo953t() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: v */
    public final synchronized String mo952v() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: v4 */
    public final void mo951v4(InterfaceC5666cw interfaceC5666cw) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w */
    public final Bundle mo950w() {
        return new Bundle();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w0 */
    public final synchronized InterfaceC6000lx mo949w0() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w5 */
    public final synchronized boolean mo948w5(C6293tt c6293tt) {
        C7297q.m1888e("loadAd must be called on the main UI thread.");
        C7601t.m939d();
        if (C0497k2.m26311k(this.f29028b) && c6293tt.f31988D == null) {
            cm0.m12440c("Failed to load the ad because app ID is missing.");
            this.f29032q.mo5143B(dq2.m11989d(4, null, null));
            return false;
        }
        if (mo987I()) {
            return false;
        }
        this.f29029d = new AtomicBoolean();
        return this.f29031p.mo6509b(c6293tt, this.f29030k, new mk2(this), new nk2(this));
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: x1 */
    public final void mo947x1(String str) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: x3 */
    public final void mo946x3(String str) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: y */
    public final InterfaceC5666cw mo945y() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: z */
    public final synchronized InterfaceC5853hx mo944z() {
        return null;
    }

    @Override // p168r4.InterfaceC5622bo
    public final void zza() {
        m8782f7(3);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: C6 */
    public final void mo4170C6(int i) {
        int i2 = i - 1;
        if (i != 0) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            return;
                        }
                        m8782f7(6);
                        return;
                    }
                    m8782f7(3);
                    return;
                }
                m8782f7(4);
                return;
            }
            m8782f7(2);
            return;
        }
        throw null;
    }

    public ok2(bu0 bu0Var, Context context, String str, hk2 hk2Var, fk2 fk2Var) {
        this.f29027a = bu0Var;
        this.f29028b = context;
        this.f29030k = str;
        this.f29031p = hk2Var;
        this.f29032q = fk2Var;
        fk2Var.m11493q(this);
    }
}
