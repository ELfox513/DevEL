package p168r4;

import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.Executor;
/* renamed from: r4.tk2 */
/* loaded from: classes2.dex */
public final class tk2 implements t73<h11> {

    /* renamed from: a */
    public final /* synthetic */ s92 f31884a;

    /* renamed from: b */
    public final /* synthetic */ f21 f31885b;

    /* renamed from: c */
    public final /* synthetic */ uk2 f31886c;

    public tk2(uk2 uk2Var, s92 s92Var, f21 f21Var) {
        this.f31886c = uk2Var;
        this.f31884a = s92Var;
        this.f31885b = f21Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        aa1 aa1Var;
        Executor executor;
        final C5996lt m9497h = this.f31885b.mo8154b().m9497h(th);
        synchronized (this.f31886c) {
            this.f31886c.f32317j = null;
            this.f31885b.mo8156a().mo5143B(m9497h);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30876O5)).booleanValue()) {
                executor = this.f31886c.f32309b;
                executor.execute(new Runnable(this, m9497h) { // from class: r4.sk2

                    /* renamed from: a */
                    public final tk2 f31386a;

                    /* renamed from: b */
                    public final C5996lt f31387b;

                    {
                        this.f31386a = this;
                        this.f31387b = m9497h;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        d92 d92Var;
                        tk2 tk2Var = this.f31386a;
                        C5996lt c5996lt = this.f31387b;
                        d92Var = tk2Var.f31886c.f32311d;
                        d92Var.mo5143B(c5996lt);
                    }
                });
            }
            aa1Var = this.f31886c.f32315h;
            aa1Var.m13041T0(60);
            yp2.m4611a(m9497h.f27361a, th, "BannerAdLoader.onFailure");
            this.f31884a.zza();
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(h11 h11Var) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        aa1 aa1Var;
        Executor executor;
        d92 d92Var;
        d92 d92Var2;
        h92 h92Var;
        h11 h11Var2 = h11Var;
        synchronized (this.f31886c) {
            this.f31886c.f32317j = null;
            viewGroup = this.f31886c.f32313f;
            viewGroup.removeAllViews();
            if (h11Var2.mo8071g() != null) {
                ViewParent parent = h11Var2.mo8071g().getParent();
                if (parent instanceof ViewGroup) {
                    String str = "";
                    if (h11Var2.m10732d() != null) {
                        str = h11Var2.m10732d().mo10772c();
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(str);
                    sb.append(" already has a parent view. Removing its old parent.");
                    cm0.m12437f(sb.toString());
                    ((ViewGroup) parent).removeView(h11Var2.mo8071g());
                }
            }
            AbstractC5928jz<Boolean> abstractC5928jz = C6225rz.f30876O5;
            if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue()) {
                ub1 m10730f = h11Var2.m10730f();
                d92Var2 = this.f31886c.f32311d;
                m10730f.m6564a(d92Var2);
                h92Var = this.f31886c.f32312e;
                m10730f.m6563b(h92Var);
            }
            viewGroup2 = this.f31886c.f32313f;
            viewGroup2.addView(h11Var2.mo8071g());
            this.f31884a.mo7189b(h11Var2);
            if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue()) {
                executor = this.f31886c.f32309b;
                d92Var = this.f31886c.f32311d;
                d92Var.getClass();
                executor.execute(rk2.m7481a(d92Var));
            }
            aa1Var = this.f31886c.f32315h;
            aa1Var.m13041T0(h11Var2.mo8066l());
        }
    }
}
