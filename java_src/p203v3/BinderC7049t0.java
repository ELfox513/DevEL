package p203v3;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import java.util.Set;
import p079h5.C4048a;
import p079h5.C4052e;
import p079h5.InterfaceC4053f;
import p088i5.BinderC4130d;
import p088i5.C4138l;
import p185t3.C6734b;
import p194u3.AbstractC6900f;
import p194u3.C6883a;
import p220x3.C7254d;
import p220x3.C7295p0;
import p220x3.C7297q;
/* renamed from: v3.t0 */
/* loaded from: classes.dex */
public final class BinderC7049t0 extends BinderC4130d implements AbstractC6900f.InterfaceC6901a, AbstractC6900f.InterfaceC6902b {

    /* renamed from: s */
    public static final C6883a.AbstractC6884a<? extends InterfaceC4053f, C4048a> f36038s = C4052e.f17574c;

    /* renamed from: a */
    public final Context f36039a;

    /* renamed from: b */
    public final Handler f36040b;

    /* renamed from: d */
    public final C6883a.AbstractC6884a<? extends InterfaceC4053f, C4048a> f36041d;

    /* renamed from: k */
    public final Set<Scope> f36042k;

    /* renamed from: p */
    public final C7254d f36043p;

    /* renamed from: q */
    public InterfaceC4053f f36044q;

    /* renamed from: r */
    public InterfaceC7047s0 f36045r;

    /* renamed from: p6 */
    public static /* synthetic */ void m2592p6(BinderC7049t0 binderC7049t0, C4138l c4138l) {
        C6734b m17321X0 = c4138l.m17321X0();
        if (m17321X0.m3524b1()) {
            C7295p0 c7295p0 = (C7295p0) C7297q.m1883j(c4138l.m17320Y0());
            m17321X0 = c7295p0.m1900Y0();
            if (m17321X0.m3524b1()) {
                binderC7049t0.f36045r.mo2608b(c7295p0.m1901X0(), binderC7049t0.f36042k);
                binderC7049t0.f36044q.mo1996e();
            }
            String valueOf = String.valueOf(m17321X0);
            StringBuilder sb = new StringBuilder(valueOf.length() + 48);
            sb.append("Sign-in succeeded with resolve account failure: ");
            sb.append(valueOf);
            Log.wtf("SignInCoordinator", sb.toString(), new Exception());
        }
        binderC7049t0.f36045r.mo2607c(m17321X0);
        binderC7049t0.f36044q.mo1996e();
    }

    /* renamed from: A2 */
    public final void m2598A2() {
        InterfaceC4053f interfaceC4053f = this.f36044q;
        if (interfaceC4053f != null) {
            interfaceC4053f.mo1996e();
        }
    }

    @Override // p088i5.InterfaceC4132f
    /* renamed from: b5 */
    public final void mo2596b5(C4138l c4138l) {
        this.f36040b.post(new RunnableC7045r0(this, c4138l));
    }

    @Override // p203v3.InterfaceC7005e
    /* renamed from: j0 */
    public final void mo2594j0(int i) {
        this.f36044q.mo1996e();
    }

    @Override // p203v3.InterfaceC7005e
    /* renamed from: o0 */
    public final void mo2593o0(Bundle bundle) {
        this.f36044q.mo17325g(this);
    }

    @Override // p203v3.InterfaceC7023k
    /* renamed from: t0 */
    public final void mo2591t0(C6734b c6734b) {
        this.f36045r.mo2607c(c6734b);
    }

    public BinderC7049t0(Context context, Handler handler, C7254d c7254d) {
        C6883a.AbstractC6884a<? extends InterfaceC4053f, C4048a> abstractC6884a = f36038s;
        this.f36039a = context;
        this.f36040b = handler;
        this.f36043p = (C7254d) C7297q.m1882k(c7254d, "ClientSettings must not be null");
        this.f36042k = c7254d.m1969h();
        this.f36041d = abstractC6884a;
    }

    /* renamed from: b2 */
    public final void m2597b2(InterfaceC7047s0 interfaceC7047s0) {
        InterfaceC4053f interfaceC4053f = this.f36044q;
        if (interfaceC4053f != null) {
            interfaceC4053f.mo1996e();
        }
        this.f36043p.m1964m(Integer.valueOf(System.identityHashCode(this)));
        C6883a.AbstractC6884a<? extends InterfaceC4053f, C4048a> abstractC6884a = this.f36041d;
        Context context = this.f36039a;
        Looper looper = this.f36040b.getLooper();
        C7254d c7254d = this.f36043p;
        this.f36044q = abstractC6884a.mo3067a(context, looper, c7254d, c7254d.m1966k(), this, this);
        this.f36045r = interfaceC7047s0;
        Set<Scope> set = this.f36042k;
        if (set != null && !set.isEmpty()) {
            this.f36044q.mo17324j();
        } else {
            this.f36040b.post(new RunnableC7043q0(this));
        }
    }
}
