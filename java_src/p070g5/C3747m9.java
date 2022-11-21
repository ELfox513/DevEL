package p070g5;

import android.os.Handler;
import android.os.Looper;
import p018b5.HandlerC0556a1;
/* renamed from: g5.m9 */
/* loaded from: classes2.dex */
public final class C3747m9 extends AbstractC3658f4 {

    /* renamed from: c */
    public Handler f16735c;

    /* renamed from: d */
    public final C3735l9 f16736d;

    /* renamed from: e */
    public final C3723k9 f16737e;

    /* renamed from: f */
    public final C3687h9 f16738f;

    @Override // p070g5.AbstractC3658f4
    /* renamed from: i */
    public final boolean mo17880i() {
        return false;
    }

    public C3747m9(C3611b5 c3611b5) {
        super(c3611b5);
        this.f16736d = new C3735l9(this);
        this.f16737e = new C3723k9(this);
        this.f16738f = new C3687h9(this);
    }

    /* renamed from: l */
    public static /* bridge */ /* synthetic */ void m18060l(C3747m9 c3747m9, long j) {
        c3747m9.mo17839c();
        c3747m9.m18058n();
        c3747m9.f17008a.mo17858F().m18014q().m18041b("Activity paused, time", Long.valueOf(j));
        c3747m9.f16738f.m18254a(j);
        if (c3747m9.f17008a.m18513u().m18354y()) {
            c3747m9.f16737e.m18081b(j);
        }
    }

    /* renamed from: m */
    public static /* bridge */ /* synthetic */ void m18059m(C3747m9 c3747m9, long j) {
        c3747m9.mo17839c();
        c3747m9.m18058n();
        c3747m9.f17008a.mo17858F().m18014q().m18041b("Activity resumed, time", Long.valueOf(j));
        if (c3747m9.f17008a.m18513u().m18354y() || c3747m9.f17008a.m18546A().f16510q.m17813b()) {
            c3747m9.f16737e.m18080c(j);
        }
        c3747m9.f16738f.m18253b();
        C3735l9 c3735l9 = c3747m9.f16736d;
        c3735l9.f16717a.mo17839c();
        if (!c3735l9.f16717a.f17008a.m18524j()) {
            return;
        }
        c3735l9.m18065b(c3735l9.f16717a.f17008a.mo17854Q().mo24763a(), false);
    }

    /* renamed from: n */
    public final void m18058n() {
        mo17839c();
        if (this.f16735c == null) {
            this.f16735c = new HandlerC0556a1(Looper.getMainLooper());
        }
    }
}
