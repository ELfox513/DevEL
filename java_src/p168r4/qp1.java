package p168r4;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import java.util.Map;
import java.util.concurrent.Executor;
import p004a3.InterfaceC0083x;
import p235z2.C7583b;
/* renamed from: r4.qp1 */
/* loaded from: classes2.dex */
public final class qp1 {

    /* renamed from: a */
    public final h71 f30268a;

    /* renamed from: b */
    public final af1 f30269b;

    /* renamed from: c */
    public final r81 f30270c;

    /* renamed from: d */
    public final e91 f30271d;

    /* renamed from: e */
    public final r91 f30272e;

    /* renamed from: f */
    public final kc1 f30273f;

    /* renamed from: g */
    public final Executor f30274g;

    /* renamed from: h */
    public final xe1 f30275h;

    /* renamed from: i */
    public final oz0 f30276i;

    /* renamed from: j */
    public final C7583b f30277j;

    /* renamed from: k */
    public final ej0 f30278k;

    /* renamed from: l */
    public final C6300u f30279l;

    /* renamed from: m */
    public final bc1 f30280m;

    /* renamed from: n */
    public final c12 f30281n;

    /* renamed from: o */
    public final pu2 f30282o;

    /* renamed from: p */
    public final ls1 f30283p;

    /* renamed from: q */
    public final xt2 f30284q;

    public qp1(h71 h71Var, r81 r81Var, e91 e91Var, r91 r91Var, kc1 kc1Var, Executor executor, xe1 xe1Var, oz0 oz0Var, C7583b c7583b, ej0 ej0Var, C6300u c6300u, bc1 bc1Var, c12 c12Var, pu2 pu2Var, ls1 ls1Var, xt2 xt2Var, af1 af1Var) {
        this.f30268a = h71Var;
        this.f30270c = r81Var;
        this.f30271d = e91Var;
        this.f30272e = r91Var;
        this.f30273f = kc1Var;
        this.f30274g = executor;
        this.f30275h = xe1Var;
        this.f30276i = oz0Var;
        this.f30277j = c7583b;
        this.f30278k = ej0Var;
        this.f30279l = c6300u;
        this.f30280m = bc1Var;
        this.f30281n = c12Var;
        this.f30282o = pu2Var;
        this.f30283p = ls1Var;
        this.f30284q = xt2Var;
        this.f30269b = af1Var;
    }

    /* renamed from: c */
    public final /* synthetic */ void m7734c(cs0 cs0Var, cs0 cs0Var2, Map map) {
        this.f30276i.m8552d(cs0Var);
    }

    /* renamed from: d */
    public final /* synthetic */ void m7733d(View view) {
        this.f30277j.m1033a();
    }

    /* renamed from: e */
    public final /* synthetic */ boolean m7732e(View view, MotionEvent motionEvent) {
        this.f30277j.m1033a();
        return false;
    }

    /* renamed from: f */
    public final /* synthetic */ void m7731f() {
        this.f30270c.m7577a();
    }

    /* renamed from: g */
    public final /* synthetic */ void m7730g(String str, String str2) {
        this.f30273f.mo4162n0(str, str2);
    }

    /* renamed from: h */
    public final /* synthetic */ void m7729h() {
        this.f30268a.mo3609F0();
    }

    /* renamed from: j */
    public static final h83<?> m7727j(cs0 cs0Var, String str, String str2) {
        final vm0 vm0Var = new vm0();
        cs0Var.mo5057o0().mo7000s0(new qt0(vm0Var) { // from class: r4.op1

            /* renamed from: a */
            public final vm0 f29100a;

            {
                this.f29100a = vm0Var;
            }

            @Override // p168r4.qt0
            /* renamed from: R */
            public final void mo5285R(boolean z) {
                vm0 vm0Var2 = this.f29100a;
                if (z) {
                    vm0Var2.m6086e(null);
                } else {
                    vm0Var2.m6085f(new Exception("Ad Web View failed to load."));
                }
            }
        });
        cs0Var.mo5089c1(str, str2, null);
        return vm0Var;
    }

    /* renamed from: i */
    public final void m7728i(final cs0 cs0Var, boolean z, x50 x50Var) {
        InterfaceC6152q m6683b;
        cs0Var.mo5057o0().mo7008d0(new InterfaceC5812gt(this) { // from class: r4.hp1

            /* renamed from: a */
            public final qp1 f24775a;

            {
                this.f24775a = this;
            }

            @Override // p168r4.InterfaceC5812gt
            /* renamed from: F0 */
            public final void mo3609F0() {
                this.f24775a.m7729h();
            }
        }, this.f30271d, this.f30272e, new v40(this) { // from class: r4.ip1

            /* renamed from: a */
            public final qp1 f25238a;

            {
                this.f25238a = this;
            }

            @Override // p168r4.v40
            /* renamed from: n0 */
            public final void mo4162n0(String str, String str2) {
                this.f25238a.m7730g(str, str2);
            }
        }, new InterfaceC0083x(this) { // from class: r4.jp1

            /* renamed from: a */
            public final qp1 f26093a;

            {
                this.f26093a = this;
            }

            @Override // p004a3.InterfaceC0083x
            /* renamed from: g */
            public final void mo4164g() {
                this.f26093a.m7731f();
            }
        }, z, x50Var, this.f30277j, new pp1(this), this.f30278k, this.f30281n, this.f30282o, this.f30283p, this.f30284q, null, this.f30269b);
        cs0Var.setOnTouchListener(new View.OnTouchListener(this) { // from class: r4.kp1

            /* renamed from: a */
            public final qp1 f26511a;

            {
                this.f26511a = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                this.f26511a.m7732e(view, motionEvent);
                return false;
            }
        });
        cs0Var.setOnClickListener(new View.OnClickListener(this) { // from class: r4.lp1

            /* renamed from: a */
            public final qp1 f27313a;

            {
                this.f27313a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f27313a.m7733d(view);
            }
        });
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30840K1)).booleanValue() && (m6683b = this.f30279l.m6683b()) != null) {
            m6683b.mo1018c((View) cs0Var);
        }
        this.f30275h.m4759K0(cs0Var, this.f30274g);
        this.f30275h.m4759K0(new InterfaceC6064nm(cs0Var) { // from class: r4.mp1

            /* renamed from: a */
            public final cs0 f27848a;

            {
                this.f27848a = cs0Var;
            }

            @Override // p168r4.InterfaceC6064nm
            /* renamed from: Y */
            public final void mo4017Y(C6026mm c6026mm) {
                st0 mo5057o0 = this.f27848a.mo5057o0();
                Rect rect = c6026mm.f27776d;
                mo5057o0.mo7012J0(rect.left, rect.top, false);
            }
        }, this.f30274g);
        this.f30275h.m5335T0((View) cs0Var);
        cs0Var.mo5080g0("/trackActiveViewUnit", new u50(this, cs0Var) { // from class: r4.np1

            /* renamed from: a */
            public final qp1 f28443a;

            /* renamed from: b */
            public final cs0 f28444b;

            {
                this.f28443a = this;
                this.f28444b = cs0Var;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f28443a.m7734c(this.f28444b, (cs0) obj, map);
            }
        });
        this.f30276i.m8551j(cs0Var);
    }
}
