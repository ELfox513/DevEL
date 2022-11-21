package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import p004a3.C0077r;
import p004a3.InterfaceC0061b0;
import p004a3.View$OnClickListenerC0078s;
import p016b3.C0497k2;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.ej2 */
/* loaded from: classes2.dex */
public final class ej2 extends AbstractBinderC6332uv implements InterfaceC0061b0, InterfaceC5622bo, k91 {

    /* renamed from: a */
    public final bu0 f23034a;

    /* renamed from: b */
    public final Context f23035b;

    /* renamed from: d */
    public final ViewGroup f23036d;

    /* renamed from: p */
    public final String f23038p;

    /* renamed from: q */
    public final yi2 f23039q;

    /* renamed from: r */
    public final fk2 f23040r;

    /* renamed from: s */
    public final im0 f23041s;

    /* renamed from: u */
    public b01 f23043u;

    /* renamed from: v */
    public p01 f23044v;

    /* renamed from: k */
    public AtomicBoolean f23037k = new AtomicBoolean();

    /* renamed from: t */
    public long f23042t = -1;

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: A0 */
    public final void mo996A0(boolean z) {
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
        this.f23039q.m8295i(c5739eu);
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
        return this.f23039q.mo6510a();
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
        return this.f23038p;
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
        this.f23040r.m11496g(interfaceC5807go);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Z1 */
    public final synchronized void mo976Z1(C6446xy c6446xy) {
    }

    @Override // p004a3.InterfaceC0061b0
    /* renamed from: e */
    public final void mo11735e() {
        m11732g7(4);
    }

    /* renamed from: f7 */
    public final /* synthetic */ void m11734f7() {
        m11732g7(5);
    }

    /* renamed from: g7 */
    public final synchronized void m11732g7(int i) {
        if (this.f23037k.compareAndSet(false, true)) {
            p01 p01Var = this.f23044v;
            if (p01Var != null && p01Var.m8527q() != null) {
                this.f23040r.m11498L(this.f23044v.m8527q());
            }
            this.f23040r.m11499A();
            this.f23036d.removeAllViews();
            b01 b01Var = this.f23043u;
            if (b01Var != null) {
                C7601t.m936g().m10858c(b01Var);
            }
            if (this.f23044v != null) {
                long j = -1;
                if (this.f23042t != -1) {
                    j = C7601t.m932k().mo24762b() - this.f23042t;
                }
                this.f23044v.m8529o(j, i);
            }
            mo973h();
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h */
    public final synchronized void mo973h() {
        C7297q.m1888e("destroy must be called on the main UI thread.");
        p01 p01Var = this.f23044v;
        if (p01Var != null) {
            p01Var.mo4220b();
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
    /* renamed from: l */
    public final synchronized void mo965l() {
        C7297q.m1888e("pause must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: n */
    public final synchronized void mo962n() {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: p */
    public final synchronized void mo959p() {
        C7297q.m1888e("resume must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: r */
    public final void mo956r() {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: s5 */
    public final void mo954s5(InterfaceC5962kw interfaceC5962kw) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: t */
    public final synchronized C6478yt mo953t() {
        C7297q.m1888e("getAdSize must be called on the main UI thread.");
        p01 p01Var = this.f23044v;
        if (p01Var != null) {
            return lp2.m9587b(this.f23035b, Collections.singletonList(p01Var.m8537g()));
        }
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
        if (C0497k2.m26311k(this.f23035b) && c6293tt.f31988D == null) {
            cm0.m12440c("Failed to load the ad because app ID is missing.");
            this.f23040r.mo5143B(dq2.m11989d(4, null, null));
            return false;
        }
        if (mo987I()) {
            return false;
        }
        this.f23037k = new AtomicBoolean();
        return this.f23039q.mo6509b(c6293tt, this.f23038p, new cj2(this), new dj2(this));
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
        m11732g7(3);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: j */
    public final InterfaceC3512a mo968j() {
        C7297q.m1888e("getAdFrame must be called on the main UI thread.");
        return BinderC3514b.m18741L0(this.f23036d);
    }

    @Override // p168r4.k91
    /* renamed from: o0 */
    public final void mo5380o0() {
        if (this.f23044v == null) {
            return;
        }
        this.f23042t = C7601t.m932k().mo24762b();
        int m8535i = this.f23044v.m8535i();
        if (m8535i <= 0) {
            return;
        }
        b01 b01Var = new b01(this.f23034a.mo8611i(), C7601t.m932k());
        this.f23043u = b01Var;
        b01Var.m12895a(m8535i, new Runnable(this) { // from class: r4.bj2

            /* renamed from: a */
            public final ej2 f21082a;

            {
                this.f21082a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21082a.m11733g();
            }
        });
    }

    public ej2(bu0 bu0Var, Context context, String str, yi2 yi2Var, fk2 fk2Var, im0 im0Var) {
        this.f23036d = new FrameLayout(context);
        this.f23034a = bu0Var;
        this.f23035b = context;
        this.f23038p = str;
        this.f23039q = yi2Var;
        this.f23040r = fk2Var;
        fk2Var.m11494p(this);
        this.f23041s = im0Var;
    }

    /* renamed from: k7 */
    public static /* synthetic */ View$OnClickListenerC0078s m11728k7(ej2 ej2Var, p01 p01Var) {
        int i;
        boolean m8532l = p01Var.m8532l();
        int intValue = ((Integer) C5592av.m12935c().m8098c(C6225rz.f31077n3)).intValue();
        C0077r c0077r = new C0077r();
        c0077r.f145d = 50;
        int i2 = 0;
        if (true != m8532l) {
            i = 0;
        } else {
            i = intValue;
        }
        c0077r.f142a = i;
        if (true != m8532l) {
            i2 = intValue;
        }
        c0077r.f143b = i2;
        c0077r.f144c = intValue;
        return new View$OnClickListenerC0078s(ej2Var.f23035b, c0077r, ej2Var);
    }

    /* renamed from: g */
    public final void m11733g() {
        C6479yu.m4568a();
        if (vl0.m6114n()) {
            m11732g7(5);
        } else {
            this.f23034a.mo8613h().execute(new Runnable(this) { // from class: r4.aj2

                /* renamed from: a */
                public final ej2 f20516a;

                {
                    this.f20516a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f20516a.m11734f7();
                }
            });
        }
    }
}
