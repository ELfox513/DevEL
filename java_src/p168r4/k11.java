package p168r4;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.Executor;
import p060f4.BinderC3514b;
/* renamed from: r4.k11 */
/* loaded from: classes2.dex */
public final class k11 extends h11 {

    /* renamed from: i */
    public final Context f26212i;

    /* renamed from: j */
    public final View f26213j;

    /* renamed from: k */
    public final cs0 f26214k;

    /* renamed from: l */
    public final qo2 f26215l;

    /* renamed from: m */
    public final g31 f26216m;

    /* renamed from: n */
    public final pj1 f26217n;

    /* renamed from: o */
    public final ef1 f26218o;

    /* renamed from: p */
    public final or3<d82> f26219p;

    /* renamed from: q */
    public final Executor f26220q;

    /* renamed from: r */
    public C6478yt f26221r;

    public k11(h31 h31Var, Context context, qo2 qo2Var, View view, cs0 cs0Var, g31 g31Var, pj1 pj1Var, ef1 ef1Var, or3<d82> or3Var, Executor executor) {
        super(h31Var);
        this.f26212i = context;
        this.f26213j = view;
        this.f26214k = cs0Var;
        this.f26215l = qo2Var;
        this.f26216m = g31Var;
        this.f26217n = pj1Var;
        this.f26218o = ef1Var;
        this.f26219p = or3Var;
        this.f26220q = executor;
    }

    @Override // p168r4.h11
    /* renamed from: g */
    public final View mo8071g() {
        return this.f26213j;
    }

    @Override // p168r4.h11
    /* renamed from: i */
    public final InterfaceC6000lx mo8069i() {
        try {
            return this.f26216m.zza();
        } catch (mp2 unused) {
            return null;
        }
    }

    @Override // p168r4.h11
    /* renamed from: k */
    public final qo2 mo8067k() {
        return this.f26215l;
    }

    @Override // p168r4.h11
    /* renamed from: m */
    public final void mo8065m() {
        this.f26218o.zza();
    }

    @Override // p168r4.i31
    /* renamed from: a */
    public final void mo4221a() {
        this.f26220q.execute(new Runnable(this) { // from class: r4.j11

            /* renamed from: a */
            public final k11 f25856a;

            {
                this.f25856a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f25856a.m10117n();
            }
        });
        super.mo4221a();
    }

    @Override // p168r4.h11
    /* renamed from: h */
    public final void mo8070h(ViewGroup viewGroup, C6478yt c6478yt) {
        cs0 cs0Var;
        if (viewGroup != null && (cs0Var = this.f26214k) != null) {
            cs0Var.mo5043u0(vt0.m6024a(c6478yt));
            viewGroup.setMinimumHeight(c6478yt.f34199d);
            viewGroup.setMinimumWidth(c6478yt.f34202q);
            this.f26221r = c6478yt;
        }
    }

    @Override // p168r4.h11
    /* renamed from: j */
    public final qo2 mo8068j() {
        C6478yt c6478yt = this.f26221r;
        if (c6478yt != null) {
            return lp2.m9586c(c6478yt);
        }
        no2 no2Var = this.f24946b;
        if (no2Var.f28402Y) {
            for (String str : no2Var.f28404a) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            return new qo2(this.f26213j.getWidth(), this.f26213j.getHeight(), false);
        }
        return lp2.m9588a(this.f24946b.f28431r, this.f26215l);
    }

    @Override // p168r4.h11
    /* renamed from: l */
    public final int mo8066l() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30772B5)).booleanValue() && this.f24946b.f28411d0) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30780C5)).booleanValue()) {
                return 0;
            }
        }
        return this.f24945a.f21154b.f20574b.f31427c;
    }

    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void m10117n() {
        if (this.f26217n.m8306d() == null) {
            return;
        }
        try {
            this.f26217n.m8306d().mo5515t4(this.f26219p.m8710a(), BinderC3514b.m18741L0(this.f26212i));
        } catch (RemoteException e) {
            cm0.m12439d("RemoteException when notifyAdLoad is called", e);
        }
    }
}
