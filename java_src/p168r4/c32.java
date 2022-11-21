package p168r4;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import java.util.concurrent.ExecutionException;
import p060f4.BinderC3514b;
/* renamed from: r4.c32 */
/* loaded from: classes2.dex */
public final class c32 implements y12<h11, ed0, n32> {

    /* renamed from: a */
    public final Context f21335a;

    /* renamed from: b */
    public final f21 f21336b;

    /* renamed from: c */
    public View f21337c;

    /* renamed from: d */
    public ob0 f21338d;

    public c32(Context context, f21 f21Var) {
        this.f21335a = context;
        this.f21336b = f21Var;
    }

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h11 mo4458a(bp2 bp2Var, no2 no2Var, t12<ed0, n32> t12Var) {
        View view;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30772B5)).booleanValue() && no2Var.f28411d0) {
            try {
                view = (View) BinderC3514b.m18740t0(this.f21338d.mo8843c());
                boolean mo8842d = this.f21338d.mo8842d();
                if (view != null) {
                    if (mo8842d) {
                        try {
                            view = (View) y73.m4806i(y73.m4814a(null), new e73(this, view, no2Var) { // from class: r4.z22

                                /* renamed from: a */
                                public final c32 f34307a;

                                /* renamed from: b */
                                public final View f34308b;

                                /* renamed from: c */
                                public final no2 f34309c;

                                {
                                    this.f34307a = this;
                                    this.f34308b = view;
                                    this.f34309c = no2Var;
                                }

                                @Override // p168r4.e73
                                /* renamed from: a */
                                public final h83 mo1029a(Object obj) {
                                    return this.f34307a.m12639e(this.f34308b, this.f34309c, obj);
                                }
                            }, qm0.f30194e).get();
                        } catch (InterruptedException | ExecutionException e) {
                            throw new mp2(e);
                        }
                    }
                } else {
                    throw new mp2(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
            } catch (RemoteException e2) {
                throw new mp2(e2);
            }
        } else {
            view = this.f21337c;
        }
        i11 mo8151d = this.f21336b.mo8151d(new x31(bp2Var, no2Var, t12Var.f31616a), new o11(view, null, new g31(t12Var) { // from class: r4.y22

            /* renamed from: a */
            public final t12 f33851a;

            {
                this.f33851a = t12Var;
            }

            @Override // p168r4.g31
            public final InterfaceC6000lx zza() {
                try {
                    return ((ed0) this.f33851a.f31617b).mo8350f();
                } catch (RemoteException e3) {
                    throw new mp2(e3);
                }
            }
        }, no2Var.f28434u.get(0)));
        mo8151d.mo8991j().m5335T0(view);
        t12Var.f31618c.m9201g7(mo8151d.mo5994g());
        return mo8151d.mo8993h();
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<ed0, n32> t12Var) {
        try {
            t12Var.f31617b.mo8356J0(no2Var.f28399V);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30772B5)).booleanValue() && no2Var.f28411d0) {
                t12Var.f31617b.mo8346i6(no2Var.f28394Q, no2Var.f28435v.toString(), bp2Var.f21153a.f34161a.f24779d, BinderC3514b.m18741L0(this.f21335a), new a32(this, t12Var, null), t12Var.f31618c, bp2Var.f21153a.f34161a.f24780e);
            } else {
                t12Var.f31617b.mo8355K1(no2Var.f28394Q, no2Var.f28435v.toString(), bp2Var.f21153a.f34161a.f24779d, BinderC3514b.m18741L0(this.f21335a), new a32(this, t12Var, null), t12Var.f31618c, bp2Var.f21153a.f34161a.f24780e);
            }
        } catch (RemoteException e) {
            throw new mp2(e);
        }
    }

    /* renamed from: e */
    public final /* synthetic */ h83 m12639e(View view, no2 no2Var, Object obj) {
        return y73.m4814a(w21.m5935a(this.f21335a, view, no2Var));
    }
}
